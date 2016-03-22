class AddSocialtypeToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :socialtype, :string
  end
end
