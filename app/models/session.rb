class Session < ApplicationRecord
  belongs_to :film
  belongs_to :hall
  has_many :bookings
  has_many :session_places
end
