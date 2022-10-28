class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :store, :release_date, :critic_rating, :multiplayer, :age_rating, :player_count, :twitch_url, :game_image_url

  has_many :reviews, polymorphic: true
end
