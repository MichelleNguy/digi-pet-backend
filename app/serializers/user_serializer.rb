class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bank, :pets, :items, :user_items
end
