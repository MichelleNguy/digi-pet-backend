class User < ApplicationRecord
    has_many :pets, dependent: :destroy
    has_many :user_items, dependent: :destroy
    has_many :items, through: :user_items

    has_secure_password

    validates_presence_of :username
    validates_uniqueness_of :username, :case_senstive => false
end
