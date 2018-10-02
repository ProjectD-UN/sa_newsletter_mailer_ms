class Topic < ApplicationRecord
    has_many :user_topics
    has_many :users, through: :user_topics

    has_many :newsletter_topics
    has_many :newsletters, through: :newsletter_topics
end
