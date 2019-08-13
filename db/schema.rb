# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_13_203555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_users", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "user_id"
    t.boolean "equipped", default: false
    t.index ["item_id"], name: "index_item_users_on_item_id"
    t.index ["user_id"], name: "index_item_users_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "attack"
    t.integer "defense"
    t.integer "hit_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "hit_points"
    t.integer "attack"
    t.integer "defense"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.integer "hit_points"
    t.integer "attack"
    t.integer "defense"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "item_users", "items"
  add_foreign_key "item_users", "users"
end
