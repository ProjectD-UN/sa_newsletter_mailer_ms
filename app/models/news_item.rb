class NewsItem 
    belongs_to :newsletter
    validates :published_at, presence: true
end
