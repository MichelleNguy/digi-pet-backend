class User < ApplicationRecord
    has_many :pets, dependent: :destroy
    has_many :user_items, dependent: :destroy
    has_many :items, through: :user_items

    has_secure_password

    validates_presence_of :username
    validates_uniqueness_of :username, :case_senstive => false

    # checks current day and user's last login day, if they are not
    # equal, a user will receive 100 dollars per unique login
    def daily_bonus
        time = Time.new
        if self.last_day != time.day
            self.bank += 100
            self.last_day = time.day
            self.save
        end
    end


end
