class AddPublishedAtToNewstweet < ActiveRecord::Migration
  def change
    add_column :newstweets, :published_at, :string
  end
end
