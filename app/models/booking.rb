class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :place
  belongs_to :session
end
