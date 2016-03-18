class AddPublishedAtToPolitic < ActiveRecord::Migration
  def change
    add_column :politics, :published_at, :string
  end
end
