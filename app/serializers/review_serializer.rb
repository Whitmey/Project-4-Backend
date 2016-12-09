class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :body, :profile_id
  has_one :user
  has_one :profile
end
