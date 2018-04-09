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

ActiveRecord::Schema.define(version: 20180409032142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "billings", force: :cascade do |t|
    t.string "code"
    t.string "payment_method"
    t.decimal "amount", precision: 10, scale: 2
    t.bigint "currency_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_billings_on_currency_id"
    t.index ["user_id"], name: "index_billings_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.date "check_in"
    t.date "check_out"
    t.float "price_per_day"
    t.float "total_price"
    t.date "booking_date"
    t.integer "adults_quantity"
    t.integer "kids_quantity"
    t.string "observations"
    t.integer "status", default: 0
    t.bigint "camping_id"
    t.bigint "user_id"
    t.bigint "campsite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "billing_id"
    t.index ["billing_id"], name: "index_bookings_on_billing_id"
    t.index ["camping_id"], name: "index_bookings_on_camping_id"
    t.index ["campsite_id"], name: "index_bookings_on_campsite_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "campings", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "user_id"
    t.integer "camping_type"
    t.bigint "commune_id"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "images"
    t.string "phone"
    t.string "email"
    t.string "tourism"
    t.string "web"
    t.string "facebook"
    t.index ["commune_id"], name: "index_campings_on_commune_id"
    t.index ["user_id"], name: "index_campings_on_user_id"
  end

  create_table "campings_services", id: false, force: :cascade do |t|
    t.bigint "camping_id", null: false
    t.bigint "service_id", null: false
  end

  create_table "campsites", force: :cascade do |t|
    t.string "identifier"
    t.string "description"
    t.bigint "camping_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status", default: false
    t.index ["camping_id"], name: "index_campsites_on_camping_id"
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

  create_table "currencies", force: :cascade do |t|
    t.string "iso"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paymentmethods", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.bigint "season_id"
    t.integer "person_type"
    t.bigint "camping_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camping_id"], name: "index_plans_on_camping_id"
    t.index ["season_id"], name: "index_plans_on_season_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_regions_on_country_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "booking_id"
    t.string "comment"
    t.float "ranking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "address"
    t.string "phone"
    t.float "latitude"
    t.float "longitude"
    t.index ["commune_id"], name: "index_users_on_commune_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["genre_id"], name: "index_users_on_genre_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "billings", "currencies"
  add_foreign_key "billings", "users"
  add_foreign_key "bookings", "billings"
  add_foreign_key "bookings", "campings"
  add_foreign_key "bookings", "campsites"
  add_foreign_key "bookings", "users"
  add_foreign_key "campings", "communes"
  add_foreign_key "campings", "users"
  add_foreign_key "campsites", "campings"
  add_foreign_key "cities", "regions"
  add_foreign_key "communes", "cities"
  add_foreign_key "plans", "campings"
  add_foreign_key "plans", "seasons"
  add_foreign_key "regions", "countries"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "users", "communes"
  add_foreign_key "users", "genres"
end
