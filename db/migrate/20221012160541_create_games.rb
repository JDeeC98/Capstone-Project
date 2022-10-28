class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.string :store
      t.string :release_date
      t.string :critic_rating
      t.boolean :multiplayer
      t.string :age_rating
      t.string :player_count
      t.string :twitch_url
      t.string :game_image_url
      t.integer :developer_id
      t.integer :genre_id
      t.integer :platform_id

      t.timestamps
    end
  end
end
