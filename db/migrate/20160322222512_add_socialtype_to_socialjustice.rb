class AddSocialtypeToSocialjustice < ActiveRecord::Migration
  def change
    add_column :socialjustices, :socialtype, :string
  end
end
