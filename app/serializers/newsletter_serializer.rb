class NewsletterSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :topics, through: :newsletter_topics
end
