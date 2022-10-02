class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :colors, array: true, default: []
      t.integer :price
      t.integer :stock
      t.string :sizes, array: true, default: []

      t.timestamps
    end
  end
end