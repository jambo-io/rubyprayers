class ReplyRequestMailer < ApplicationMailer
    after_action :set_sent_true
    after_action :return_true

    def reply_request(request)
        @request = request
        @categories = request.categories
        
        mail(to: @request.email, subject: "Re: Comunidade Bahá'í do Brasil")

            
    end

    private
    def set_sent_true
        status = @request.request_status
        status.sent = true
        status.save!
    end
    def return_true
        return true
    end
end
