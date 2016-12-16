class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :rank, :fee, :contact, :text, :user, :game, :image
  has_one :game
  has_one :user
end
