class Place < ApplicationRecord
  belongs_to :hall
  has_one :booking
  has_one :session_place
end
