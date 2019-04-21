class ReplyRequestMailer < ApplicationMailer
    def reply_request
        @user = "Teste"
        mail(to: "guilhermewnunes@gmail.com", subject: "This is a ruby Email test")
    end
end
