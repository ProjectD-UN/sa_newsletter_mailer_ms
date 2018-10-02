=begin
class NewsItem < ApplicationRecord
    belongs_to :newsletter
    validates :published_at, presence: true
end
=end