class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :hygiene, :hunger, :attention
  has_one :user
end
