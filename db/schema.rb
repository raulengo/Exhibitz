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

ActiveRecord::Schema.define(version: 2020_06_03_154350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.text "info"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "exhibit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "date"
    t.integer "card_details"
    t.integer "number_of_tickets"
    t.string "card_holder_name"
    t.integer "cvc"
    t.date "expiry_date"
    t.index ["exhibit_id"], name: "index_bookings_on_exhibit_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "exhibit_artists", id: false, force: :cascade do |t|
    t.bigint "exhibit_id", null: false
    t.bigint "artist_id", null: false
    t.index ["exhibit_id", "artist_id"], name: "index_exhibit_artists_on_exhibit_id_and_artist_id"
  end

  create_table "exhibits", force: :cascade do |t|
    t.string "name"
    t.string "start_date"
    t.string "close_date"
    t.integer "price"
    t.string "booking_website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "museum_id", null: false
    t.string "image"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.index ["museum_id"], name: "index_exhibits_on_museum_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "exhibit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exhibit_id"], name: "index_favourites_on_exhibit_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "museums", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "website"
    t.text "info"
    t.text "opening_hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "dob"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "exhibits"
  add_foreign_key "bookings", "users"
  add_foreign_key "exhibits", "museums"
  add_foreign_key "favourites", "exhibits"
  add_foreign_key "favourites", "users"
end
