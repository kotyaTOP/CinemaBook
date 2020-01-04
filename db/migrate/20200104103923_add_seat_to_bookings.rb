class AddSeatToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :row, :integer
    add_column :bookings, :seat, :integer
  end
end
