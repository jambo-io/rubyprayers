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

    name = body_encoded.split("Nome:").last.split("Email:").first.strip!
    puts "Name: #{name}"
    user_email = body_encoded.split("Email:").last.split("Telefone:").first.strip!
    puts "Email: #{user_email}"
    phone = body.split("Telefone:").last.split("Pedido de oração:").first.strip!
    puts "Phone: #{phone}"
    message = "start: " + body_encoded.split("Pedido de oração:").last.split("Para").first.strip!
    puts "Message: #{message}"

    #Clean Message
    if message.include? "Não perca potenciais clientes."
      message = message.split("start: ").last.split("Não perca potenciais clientes.").first.strip!
      puts "case1"
    elsif message.include? "Never miss a lead."
       message = message.split("start: ").last.split("Never miss a lead.").first.strip!
       puts "case2"
    elsif message.include? "Pra editar as configurações"
      message = message.split("start: ").last.split("Pra editar as configurações").first.strip!
      puts "case3"
    else
      puts "case4"
      message = message.split("start: ").laste
    end

     puts "Message: #{message}"
     request = save_data(name, user_email, phone, message, datetime)
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
    gmail.mailbox('rubyprayers').emails(:unstarred, :after => Date.parse("2018-08-31"), :from =>  from).each do |email|
        if from="oracoesonline@bahai.org.br"
          sanitize_redirected_email(email)
        end
    end
    
    #Redirected from Oracoesonline@bahai.rog.br
    from = "no-reply@parastorage.com"
    gmail.mailbox('rubyprayers').emails(:unstarred, :after => Date.parse("2018-08-31"), :from =>  from).each do |email|
        if from="no-reply@parastorage.com"
          sanitize_redirected_email(email)
        end
    end 

  end
end
