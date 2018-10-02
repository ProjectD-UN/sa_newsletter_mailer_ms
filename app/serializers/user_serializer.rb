class UserSerializer < ActiveModel::Serializer
  attributes :id , :name , :email
  has_many :topics, through: :user_topics
end
