class ReplyRequestMailer < ApplicationMailer
    def reply_request(request)
        @request = request
        @category = request.categories.first
        @prayer = @category.prayers.first.prayer
        mail(to: @request.email, subject: "Re: Comunidade Bahá'í do Brasil")
    end
end
