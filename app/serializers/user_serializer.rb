class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :tunes
end
