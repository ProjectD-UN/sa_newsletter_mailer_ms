require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  def sample_mail_preview
    UserMailer.send_alert_email(User.first,Topic.first)
  end
end
