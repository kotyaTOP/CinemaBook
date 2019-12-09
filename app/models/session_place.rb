class SessionPlace < ApplicationRecord
  belongs_to :session
  belongs_to :place
end
