class AddFilmtypeToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :filmtype, :string
  end
end
