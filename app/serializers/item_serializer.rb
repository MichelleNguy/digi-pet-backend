class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :effect
  has_one :shop
end
