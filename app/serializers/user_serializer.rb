class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :tunes, :setlists
end
