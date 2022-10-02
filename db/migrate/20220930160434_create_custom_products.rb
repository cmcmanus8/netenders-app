class CreateCustomProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :custom_products do |t|
      t.belongs_to :product, index: true, foreign_key: true
      t.string :right_sleeve
      t.string :left_sleeve
      t.string :front
      t.string :back
      t.integer :quantity
      t.string :size
      t.string :color

      t.timestamps
    end
  end
end