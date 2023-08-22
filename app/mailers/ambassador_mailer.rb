class AmbassadorMailer < ApplicationMailer
    def send_confirmation_email(ambassador)
        @ambassador = ambassador
        mail(to: @ambassador.email, subject: 'Votre canditature en tant qu\'embassadeur est en cours de traitement ')
    end
end
