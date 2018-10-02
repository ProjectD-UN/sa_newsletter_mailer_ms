=begin


class NewsItemGenerator
    def generate_news_item(newsletter_id)
        newsletter = PressReview.find(newsletter_id)
  
        NewsItem.create(newsletter_id: newsletter_id, published_at: newsletter.live_date)
    end
end
=end