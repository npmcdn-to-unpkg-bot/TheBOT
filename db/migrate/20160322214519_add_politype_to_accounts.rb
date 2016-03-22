class AddPolitypeToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :politype, :string
  end
end
