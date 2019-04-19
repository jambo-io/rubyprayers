class GmailController < RequestsController

    def count_emails
        #@gmail.inbox.count(:unread)
        connect_to_gmail do |connect|
            count = connect.mailbox('rubyprayers').count(:unread)
        end
    end

    def get_requests
        connect_to_gmail do |connect|
            requests = connect.mailbox('rubyprayers').emails(:unread)
        end
    end

    def save_to_db
        require 'sanitize'
        messages = self.get_requests
        
        messages.take(1).each do |email|
            
            body = email.html_part.body.decoded
            body_encoded = body.force_encoding('utf-8')
            #no_tags = Sanitize.clean(email.html_part.body.decoded)
            name = body_encoded.split("<b>Nome</b>").last.split("</li>").first
            email = body_encoded.split("<b>Email</b>").last.split("</li>").first
            phone = body.split("<b>Telefone</b>").last.split("</li>").first
            request = body_encoded.split("<b>Pedido de oração</b>").last.split("</li>").first

            puts name
            puts email
            puts phone
            puts request
        end
    end

    private
    def connect_to_gmail
        require 'gmail'
        gmail = Gmail.new(Rails.application.credentials.gmail[:imap_user], Rails.application.credentials.gmail[:imap_password])
        yield(gmail)
    end
end