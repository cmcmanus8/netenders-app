# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_09_30_160434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "custom_products", force: :cascade do |t|
    t.bigint "product_id"
    t.string "right_sleeve"
    t.string "left_sleeve"
    t.string "front"
    t.string "back"
    t.integer "quantity"
    t.string "size"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_custom_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "colors", default: [], array: true
    t.integer "price"
    t.integer "stock"
    t.string "sizes", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "custom_products", "products"
end
