class ReplyRequestMailer < ApplicationMailer
    def reply_request(request)
        @request = request
        @categories = request.categories
        
        mail(to: @request.email, subject: "Re: Comunidade Bahá'í do Brasil")
    end
end
