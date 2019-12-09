class CreateHalls < ActiveRecord::Migration[6.0]
  def change
    create_table :halls do |t|
      t.integer :number
      t.integer :row_num
      t.integer :seat_num

      t.timestamps
    end
  end
end
