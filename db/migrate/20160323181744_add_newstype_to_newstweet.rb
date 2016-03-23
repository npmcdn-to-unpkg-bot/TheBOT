class AddNewstypeToNewstweet < ActiveRecord::Migration
  def change
    add_column :newstweets, :newstype, :string
  end
end
