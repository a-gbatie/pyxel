class AdventureSerializer < ActiveModel::Serializer
  attributes :id, :title, :photo, :location, :hashtags, :description, :likes
end
