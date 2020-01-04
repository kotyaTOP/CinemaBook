class AddDetailsToFilms < ActiveRecord::Migration[6.0]
  def change
    add_column :films, :producer, :string
  end
end
