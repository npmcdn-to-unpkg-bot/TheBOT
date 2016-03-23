class AddFilmtypeToFilm < ActiveRecord::Migration
  def change
    add_column :films, :filmtype, :string
  end
end
