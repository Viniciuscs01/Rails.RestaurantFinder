class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :customer_rating
      t.integer :distance
      t.integer :price
      t.references :cuisine, null: false, foreign_key: true

      t.timestamps
    end
    add_index :restaurants, :name
  end
end
