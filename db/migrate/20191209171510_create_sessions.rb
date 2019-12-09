class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.datetime :date_time
      t.references :film, null: false, foreign_key: true
      t.references :hall, null: false, foreign_key: true

      t.timestamps
    end
  end
end
