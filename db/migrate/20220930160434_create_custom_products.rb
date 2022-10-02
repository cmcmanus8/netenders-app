class CreateCustomProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :custom_products do |t|
      t.string :right_sleeve
      t.string :left_sleeve
      t.string :front
      t.string :back
      t.integer :quantity
      t.string :size
      t.string :color
      t.integer :product_id

      t.timestamps
    end

    add_foreign_key :custom_products, :products
  end
end