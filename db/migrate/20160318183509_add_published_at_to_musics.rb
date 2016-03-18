class AddPublishedAtToMusics < ActiveRecord::Migration
  def change
    add_column :musics, :published_at, :string
  end
end
