class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :category
      t.string :type
      t.integer :inventory
      t.decimal :discount
      t.string :color

      t.timestamps
    end
  end
end
