class AddDetails2ToFilms < ActiveRecord::Migration[6.0]
  def change
    add_column :films, :actors, :string
    add_column :films, :year, :datetime
    add_column :films, :country, :string
    add_column :films, :limit, :integer
    add_column :films, :story, :string
  end
end
