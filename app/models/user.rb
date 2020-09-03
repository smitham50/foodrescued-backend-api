class User < ApplicationRecord
    validates :username, uniqueness: true
    has_many :foods, dependent: :destroy
    has_one :user_address, dependent: :destroy
    has_secure_password
end
