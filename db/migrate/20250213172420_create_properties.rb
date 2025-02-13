class CreateProperties < ActiveRecord::Migration[7.1]
  def change
    create_table :properties do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.float :price, null: false
      t.float :longitude
      t.float :latitude
      t.string :property_status, null: false
      t.string :property_type, null: false
      t.string :listing_type, null: false
      t.integer :area, null: false
      t.integer :bedroom_count, null: false
      t.integer :bathroom_count, null: false
      t.string :description

      t.timestamps
    end
  end
end
