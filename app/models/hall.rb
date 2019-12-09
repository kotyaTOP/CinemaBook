class Hall < ApplicationRecord
  has_many :places
  has_many :sessions
end
