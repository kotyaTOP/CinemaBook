class RemoveForeignKeyFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :bookings, :places
  end
end
