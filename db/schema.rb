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

ActiveRecord::Schema.define(version: 2023_12_14_042626) do

  create_table "acts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_acts_on_restaurant_id"
    t.index ["user_id"], name: "index_acts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categorys_restaurants", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_categorys_restaurants_on_category_id"
    t.index ["restaurant_id"], name: "index_categorys_restaurants_on_restaurant_id"
  end

  create_table "closedays", force: :cascade do |t|
    t.date "day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "closedays_restaurants", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.integer "closeday_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["closeday_id"], name: "index_closedays_restaurants_on_closeday_id"
    t.index ["restaurant_id"], name: "index_closedays_restaurants_on_restaurant_id"
  end

  create_table "interestings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_interestings_on_restaurant_id"
    t.index ["user_id"], name: "index_interestings_on_user_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "menu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus_restaurants", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.integer "menu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["menu_id"], name: "index_menus_restaurants_on_menu_id"
    t.index ["restaurant_id"], name: "index_menus_restaurants_on_restaurant_id"
  end

  create_table "opentimes", force: :cascade do |t|
    t.time "open"
    t.time "close"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "opentimes_restaurants", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.integer "opentime_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["opentime_id"], name: "index_opentimes_restaurants_on_opentime_id"
    t.index ["restaurant_id"], name: "index_opentimes_restaurants_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name", null: false
    t.string "pref", null: false
    t.string "city", null: false
    t.text "memo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "station"
    t.string "line"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stations_restaurants", force: :cascade do |t|
    t.integer "restaurant_id", null: false
    t.integer "station_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_stations_restaurants_on_restaurant_id"
    t.index ["station_id"], name: "index_stations_restaurants_on_station_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
