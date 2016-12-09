class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :profiles
end
