class GmailController < RequestsController

    def count_emails
        #@gmail.inbox.count(:unread)
        connect_to_gmail do |connect|
            count = connect.mailbox('rubyprayers').count(:unread)
        end
    end

    def get_requests
        connect_to_gmail do |connect|

            connect.mailbox('rubyprayers').emails(:unstarred, :after => Date.parse("2019-02-28"), :from =>  "no-reply@parastorage.com").take(1).each do |email|

                # => Header
                head = email.header.to_s
                head_encoded = head.force_encoding('utf-8')
                datetime = head_encoded.split("Date:").last.split("From:").first

                #no_tags = Sanitize.clean(email.html_part.body.decoded)
                # => Body
                body = email.html_part.body.decoded
                body_encoded = body.force_encoding('utf-8')

                name = body_encoded.split("<b>Nome</b>").last.split("</li>").first
                user_email = body_encoded.split("<b>Email</b>").last.split("</li>").first
                message = body_encoded.split("<b>Pedido de oração</b>").last.split("</li>").first
                phone = body.split("<b>Telefone</b>").last.split("</li>").first

                request = Request.new
                request.name = name
                request.email = user_email
                request.request = message
                request.phone = phone
                request.save!

                email.star!
                puts user_email
                puts request
                puts datetime

            end 
        end
    end

    def save_to_db
        require 'sanitize'
        messages = self.get_requests
        
        
    end

    private
    def connect_to_gmail
        require 'gmail'
        gmail = Gmail.new(Rails.application.credentials.gmail[:imap_user], Rails.application.credentials.gmail[:imap_password])
        yield(gmail)
    end
end