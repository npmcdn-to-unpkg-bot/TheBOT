class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :type
      t.string :tweet_id
      t.string :tweet_url
      t.text :content

      t.timestamps null: false
    end
  end
end
