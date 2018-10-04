class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(newsletter,user)
    # Do something later
    @newsletter = newsletter
    @user = user
    UserMailer.send_alert_email(@newsletter,@user).deliver_later
  end
end
