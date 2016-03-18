class AddPublishedAtToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :published_at, :datetime
  end
end
