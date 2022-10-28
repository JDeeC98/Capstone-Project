class CreatePlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :platforms do |t|
      t.string :platform_image_url
      t.string :name

      t.timestamps
    end
  end
end
