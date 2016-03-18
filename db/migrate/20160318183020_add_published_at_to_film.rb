class AddPublishedAtToFilm < ActiveRecord::Migration
  def change
    add_column :films, :published_at, :string
  end
end
