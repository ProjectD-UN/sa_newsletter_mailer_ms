# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def sample_mail_preview
        UserMailer.send_alert_email(Newsletter.first,User.first)
    end
end
