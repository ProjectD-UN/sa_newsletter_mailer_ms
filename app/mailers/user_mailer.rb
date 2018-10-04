class UserMailer < ApplicationMailer
    default from: "apoloplus383@gmail.com"
    def send_alert_email(newsletter,user)
        # Sends an email to the author
        # alerting them of a new press review
        @newsletter= newsletter
        @user = user
        mail(to: @user.email, subject: "Un boletin de tu interes")
    end
end
