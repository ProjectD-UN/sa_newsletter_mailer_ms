class UserAlerter
    def alert_user(newsletter_id)
        newsletter = Newsletter.find(newsletter_id)
  
        UserMailer.send_alert_email(newsletter).deliver_later
    end
  end