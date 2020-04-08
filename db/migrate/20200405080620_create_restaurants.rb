class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false, default: ""
      t.time :opening_hours, null: false, default: ""
      t.string :nearest_station, null: false, default: ""
      t.string :external_link
      t.string :image, null: false, default: ""

      t.timestamps
    end
  end
end
