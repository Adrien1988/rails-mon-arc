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

ActiveRecord::Schema.define(version: 2021_07_08_073124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ads", force: :cascade do |t|
    t.string "title"
    t.string "equipment"
    t.integer "price"
    t.string "state"
    t.text "description"
    t.string "location"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "bow_id"
    t.bigint "arrow_id"
    t.bigint "bow_accessory_id"
    t.index ["bow_accessory_id"], name: "index_ads_on_bow_accessory_id"
    t.index ["bow_id"], name: "index_ads_on_bow_id"
    t.index ["arrow_id"], name: "index_ads_on_arrow_id"
    t.index ["user_id"], name: "index_ads_on_user_id"
  end

  create_table "bow_accessories", force: :cascade do |t|
    t.string "accessory_name"
    t.string "mark"
    t.string "matter"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bows", force: :cascade do |t|
    t.string "mark"
    t.integer "power"
    t.integer "waist"
    t.string "matter"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "arrows", force: :cascade do |t|
    t.string "mark"
    t.integer "rigidity"
    t.integer "length"
    t.string "matter"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ads", "bow_accessories"
  add_foreign_key "ads", "bows"
  add_foreign_key "ads", "arrows"
  add_foreign_key "ads", "users"
end
