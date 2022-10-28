class CreateDevelopers < ActiveRecord::Migration[7.0]
  def change
    create_table :developers do |t|
      t.string :name
      t.string :hq_location
      t.string :date_founded
      t.string :developer_image_url

      t.timestamps
    end
  end
end
