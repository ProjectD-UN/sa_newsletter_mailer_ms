class Newsletter < ApplicationRecord
    has_many :newsletter_topics
    has_many :topics, through: :newsletter_topics


    after_commit :alert_user, on: :create
    #after_commit :generate_news_item, on: :create
  
    private
    def alert_user
        #UserMailer.send_alert_email(self).deliver_later
    end
=begin
    def generate_news_item
        NewsItem.create(self)
    end
=end
end
