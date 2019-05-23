class GmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    require 'gmail'
    gmail = Gmail.new(Rails.application.credentials.gmail[:imap_user], Rails.application.credentials.gmail[:imap_password])

    gmail.mailbox('rubyprayers').emails(:unstarred, :after => Date.parse("2018-08-31"), :from =>  "oracoesonline@bahai.org.br").each do |email|

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

        message = body_encoded.split("Pedido de oração:").last.split("Para").first.strip!
        puts "Message: #{message}"

        request = Request.new
        request.name = name
        request.email = user_email
        request.request = message
        request.phone = phone
        request.received_at = DateTime.parse(datetime)
        request.save!

        email.star!
        puts user_email
        puts request
        puts DateTime.parse(datetime)

    end 

  end
end
