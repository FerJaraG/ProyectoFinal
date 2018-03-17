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

ActiveRecord::Schema.define(version: 20180314210918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "camping_profiles", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "user_id"
    t.integer "camping_type"
    t.bigint "commune_id"
    t.string "address"
    t.string "latitude"
    t.string "longitude"
    t.string "rules"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commune_id"], name: "index_camping_profiles_on_commune_id"
    t.index ["user_id"], name: "index_camping_profiles_on_user_id"
  end

  create_table "campings", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "user_id"
    t.integer "camping_type"
    t.bigint "commune_id"
    t.string "address"
    t.string "latitude"
    t.string "longitude"
    t.string "rules"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commune_id"], name: "index_campings_on_commune_id"
    t.index ["user_id"], name: "index_campings_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_cities_on_region_id"
  end

  create_table "communes", force: :cascade do |t|
    t.string "name"
    t.bigint "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_communes_on_city_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_regions_on_country_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "lastName"
    t.integer "user_type"
    t.date "birthday"
    t.bigint "genre_id"
    t.bigint "commune_id"
    t.string "biography"
    t.string "image"
    t.index ["commune_id"], name: "index_users_on_commune_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["genre_id"], name: "index_users_on_genre_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "camping_profiles", "communes"
  add_foreign_key "camping_profiles", "users"
  add_foreign_key "campings", "communes"
  add_foreign_key "campings", "users"
  add_foreign_key "cities", "regions"
  add_foreign_key "communes", "cities"
  add_foreign_key "regions", "countries"
  add_foreign_key "users", "communes"
  add_foreign_key "users", "genres"
end
