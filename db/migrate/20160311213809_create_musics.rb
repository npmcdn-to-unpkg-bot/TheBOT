class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :tweet_id
      t.string :tweet_url
      t.text :content

      t.timestamps null: false
    end
  end
end
