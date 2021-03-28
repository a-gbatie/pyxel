class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :hometown, :bio, :age
end
