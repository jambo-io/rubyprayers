class ReplyRequestMailer < ApplicationMailer
    after_action :set_sent_true
    after_action :return_true
    before_action :greet
    before_action :default_prayer
    before_action :default_author

    def reply_request(request)
        @request = request
        @categories = request.categories
        @greet = greet
        @default_prayer = default_prayer
        @default_author = default_author
        mail(to: "guilhermewnunes@gmail.com", subject: "Re: Comunidade Bahá'í do Brasil")   
    end

    private
    def set_sent_true
        status = @request.request_status
        status.sent = true
        status.sent_at = Time.now
        status.save!
    end
    def return_true
        return true
    end
    def greet
        case Time.zone.now.hour
        when 4..11 then 'Bom dia'
        when 12..17 then 'Boa tarde'
        when 18..23 then 'Boa noite'
        else
          'Olá'
        end
    end
    def default_prayer
        "<p>N&atilde;o removas, &oacute; Senhor, a mesa festiva que se estendeu em Teu nome, nem apagues a chama ardente, acesa com Teu fogo inextingu&iacute;vel. Que Tuas &Aacute;guas Vivas, murmurando com a melodia de Tua gl&oacute;ria e Tua lembran&ccedil;a, n&atilde;o deixem de fluir, e Teus servos n&atilde;o sejam privados da fragr&acirc;ncia de Teus doces aromas, donde emana o perfume do Teu amor.</p>
            <p>Senhor! Transforma a ang&uacute;stia de Teus santos em sossego, suas durezas em conforto; muda-lhes a humilha&ccedil;&atilde;o em gl&oacute;ria, e a tristeza em j&uacute;bilo e &ecirc;xtase, &oacute; Tu que seguras nas m&atilde;os as r&eacute;deas de toda a humanidade!</p>
            <p>&Eacute;s, em verdade, o Deus Uno, o Poderoso, o Onipotente, a Suprema Sabedoria!</p>"
    end
    def default_author
        "‘Abdu’l-Bahá"
    end
end
