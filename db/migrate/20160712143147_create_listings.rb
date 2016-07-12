class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :item
      t.string :brand
      t.integer :quantity
      t.string :url

      t.timestamps
    end
  end
end
