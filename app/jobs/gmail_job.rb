class GmailJob < ApplicationJob
  queue_as :default

  def save_data (name, email, phone, message, datetime)

    request = Request.new
    request.name = name
    request.email = email
    request.request = message
    request.phone = phone
    request.received_at = DateTime.parse(datetime)

    if request.save!
      return true
    else
      return false
    end

  end

  def sanitize_redirected_email (email)
    # => Header
    head = email.header.to_s
    head_encoded = head.force_encoding('utf-8')
    datetime = head_encoded.split("Date:").last.split("From:").first
    # => Body
    body = email.html_part.body.decoded

    # Eliminate HMTL tags
    body_encoded = Sanitize.clean(body.force_encoding('utf-8'))
    puts "body encoded"
    
    #Change Date based on Foward Message
    #---------- Forwarded message ---------

    if(body_encoded.include? "---------- Forwarded message ---------")
      puts "included <<<<<<<<<<"


      if ((body_encoded.include? "Date:") || (body_encoded.include? "Data:"))
        if (body_encoded.include? "Subject:"  || (body_encoded.include? "Assunto:"))
          body_encoded_date = body_encoded.split("Date:").last.split("Subject:").first.strip!
          
          date_decoded = body_encoded_date.split(",").last.split("às")
          date_day_decoded = /\d+/.match(date_decoded.to_s)
          date_month_decoded = date_decoded[0].split(date_day_decoded.to_s + " de ").last.split(" de 2")
          

          date_year_decoded = 2000 + date_month_decoded[1].to_i
          date_month_decoded = date_month_decoded[0].to_s
          
          months = ["jan.","fev.","mar.","abr.","mai.","jun.","jul.","ago.", "set.", "out.", "nov.", "dez."]
          puts "chegou aqui"
          
          date_month_decoded_2 = months.find_index(date_month_decoded) + 1
          
          #puts date_decoded
          puts "date decoded:" + date_decoded[0].to_s
          puts "Day decoded:" + date_day_decoded.to_s
          puts "Month decoded:" + date_month_decoded_2.to_s
          puts "Year decoded:" + date_year_decoded.to_s
          puts "Date Parsed"
          full_date_decoded = date_year_decoded.to_s + "-" + date_month_decoded_2.to_s + "-" + date_day_decoded.to_s + " " + "14:00:00 UTC".to_s
          datetime = Date.parse(full_date_decoded)
        end
      end
    end

    if ((!body_encoded.include? "Detalhes da Mensagem:") || (!body_encoded.include? "Message Details:"))
      if !body_encoded.include? "Nome"
        if !body_encoded.include? "Email"
          if !body_encoded.include? "Pedido de Oração"
            email.move_to!("Rubyprayers_exceptions")
            return false
          end
        end
      end
    end

    if ((body_encoded.include? "Detalhes da Mensagem:") || (body_encoded.include? "Message Details:"))
      if (body_encoded.include? "Nome do Formulário")
        puts "part 1"
        body_encoded = body_encoded.split("Detalhes da Mensagem:").last.split("Nome do Formulário").first.strip!
      elsif (body_encoded.include? "Não perca potenciais clientes.")
        puts "part 2"
        body_encoded = body_encoded.split("Detalhes da Mensagem:").last.split("Não perca potenciais clientes.").first.strip!
      elsif (body_encoded.include? "A site visitor just submitted a new Contact Form")
        body_encoded = body_encoded.split("Message Details:").last.split("To edit your email settings").first.strip!
      end
    end

    puts "new body encoded"
    puts body_encoded

    fields = ["Nome", "Email", "Telefone", "Pedido de oração"]

    if(body_encoded.include? "Nome:")
      fields = ["Nome:", "Email:", "Telefone:", "Pedido de oração:"]
    end

    name = body_encoded.split(fields[0]).last.split(fields[1]).first.strip!
    puts "Name: #{name}"

    user_email = body_encoded.split(fields[1]).last.split(fields[2]).first.strip!
    puts "Email: #{user_email}"

    phone = body_encoded.split(fields[2]).last.split(fields[3]).first.strip!
    puts "Phone: #{phone}"

    message = body_encoded.split(fields[3]).last.to_s


    filters = ["Nome do Formulário", "Não perca potenciais clientes.", "Never miss a lead.", "Para editar as configurações de email", "Para editar as configurações do seu email, acesse seu Inbox na versão desktop."]

    filters.each do |filter|
      puts "filter"
      puts filter
      if message.include? filter
        message = message.split(filter).first.strip!
      end
    end

    

     puts "Message: #{message}"
     request = save_data(name, user_email, phone, message, datetime.to_s)
     if(request)
       email.star!
       puts "Pedido Salvo: #{request}"
    end

  end

  def perform(*args)
    # Do something later
    require 'gmail'
    gmail = Gmail.new(ENV['imap_user'], ENV['imap_password'])

    #Fowarded Email
    from = "oracoesonline@bahai.org.br"
    gmail.mailbox(ENV['gmail_label']).emails(:unstarred, :after => Date.parse("2018-08-31"), :from =>  from).each do |email|
        if from=="oracoesonline@bahai.org.br"
          sanitize_redirected_email(email)
        end
    end
    
    #Redirected from Oracoesonline@bahai.rog.br
    from = "no-reply@parastorage.com"
    gmail.mailbox(ENV['gmail_label']).emails(:unstarred, :after => Date.parse("2018-08-31"), :from =>  from).each do |email|
        if from=="no-reply@parastorage.com"
          sanitize_redirected_email(email)
        end
    end 

  end
end
