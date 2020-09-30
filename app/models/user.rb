require 'geocoder'

class User < ApplicationRecord
    validates :username, uniqueness: true
    has_secure_password
    has_many :foods, dependent: :destroy
    acts_as_token_authenticatable
    geocoded_by :full_address
    after_validation :geocode

    def full_address
        [address, city, stateInits, zip].compact.join(', ')
    end
end
