class User < ApplicationRecord
    validates :username, uniqueness: true
    has_secure_password
    has_many :foods, dependent: :destroy
    acts_as_token_authenticatable
end
