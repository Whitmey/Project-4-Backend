class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :rank, :fee, :contact, :image, :text, :user, :game
  has_one :game
  has_one :user
end
