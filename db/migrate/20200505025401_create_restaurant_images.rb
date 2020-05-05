class CreateRestaurantImages < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_images do |t|
      t.string :name, null: false, default: ""
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
