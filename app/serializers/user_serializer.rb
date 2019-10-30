class UserSerializer < ActiveModel::Serializer
  attributes :id, :bank, :pets, :user_items
end
