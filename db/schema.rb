# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_30_182613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "img_url"
    t.string "category"
    t.boolean "consumable", default: true, null: false
    t.string "effect"
    t.bigint "shop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shop_id"], name: "index_items_on_shop_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.integer "hygiene", default: 50, null: false
    t.integer "hunger", default: 50, null: false
    t.integer "attention", default: 50, null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_pets_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.string "description", default: "This is a beautiful shop.", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_items", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_user_items_on_item_id"
    t.index ["user_id"], name: "index_user_items_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.integer "bank", default: 500, null: false
    t.integer "last_day", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "items", "shops"
  add_foreign_key "pets", "users"
  add_foreign_key "user_items", "items"
  add_foreign_key "user_items", "users"
end
