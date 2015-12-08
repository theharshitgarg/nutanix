class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.text :name
      t.integer :actual_price
      t.float :discount
      t.integer :rating
      t.string :provider
      t.text :link
      t.text :image

      t.timestamps null: false
    end
  end
end
