class RemovePlaceIdFromBookings < ActiveRecord::Migration[6.0]
  def change

    remove_column :bookings, :place_id, :integer
  end
end
