class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :rank, :fee, :contact, :user, :game
  has_one :game
  has_one :user
end
