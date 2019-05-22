class GmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    require 'gmail'
    gmail = Gmail.new(Rails.application.credentials.gmail[:imap_user], Rails.application.credentials.gmail[:imap_password])

    gmail.mailbox('rubyprayers').emails(:unstarred, :after => Date.parse("2018-08-31"), :from =>  "no-reply@parastorage.com").each do |email|

        # => Header
        head = email.header.to_s
        head_encoded = head.force_encoding('utf-8')
        datetime = head_encoded.split("Date:").last.split("From:").first

        #no_tags = Sanitize.clean(email.html_part.body.decoded)
        # => Body
        body = email.html_part.body.decoded
        body_encoded = body.force_encoding('utf-8')

        name = body_encoded.split("<b>Nome</b>").last.split("</li>").first.strip!
        user_email = body_encoded.split("<b>Email</b>").last.split("</li>").first.strip!
        message = body_encoded.split("<b>Pedido de oração</b>").last.split("</li>").first.strip!
        phone = body.split("<b>Telefone</b>").last.split("</li>").first.strip!

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