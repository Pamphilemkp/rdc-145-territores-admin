class AmbassadorMailer < ApplicationMailer
    def send_confirmation_email(ambassador)
        @ambassador = ambassador
        mail(to: @ambassador.email, subject: 'Votre canditature d\'ambassadeur est en cours de traitement ')
    end

    def acceptance_email(ambassador)
        @ambassador = ambassador
        mail(to: @ambassador.email, subject: "Félicitations! Votre Candidature au Poste d'Ambassadeur a été Acceptée" )
    end
end
