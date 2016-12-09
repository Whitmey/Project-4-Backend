class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :body, :profile_ids
  has_one :user
  has_one :profile
end
