class CreateSessionPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :session_places do |t|
      t.references :session, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
