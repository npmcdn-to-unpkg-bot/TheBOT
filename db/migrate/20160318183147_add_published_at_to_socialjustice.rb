class AddPublishedAtToSocialjustice < ActiveRecord::Migration
  def change
    add_column :socialjustices, :published_at, :string
  end
end
