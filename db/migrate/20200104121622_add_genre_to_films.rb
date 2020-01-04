class AddGenreToFilms < ActiveRecord::Migration[6.0]
  def change
    add_column :films, :genre, :string
  end
end
