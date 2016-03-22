class AddPolitypeToPolitics < ActiveRecord::Migration
  def change
    add_column :politics, :politype, :string
  end
end
