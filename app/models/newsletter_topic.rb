class NewsletterTopic < ApplicationRecord
    belongs_to :newsletter
    belongs_to :topic
end
