class AddNewstypeToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :newstype, :string
  end
end
