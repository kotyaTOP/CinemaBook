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

ActiveRecord::Schema.define(version: 2020_01_04_103923) do

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "session_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "row"
    t.integer "seat"
    t.index ["session_id"], name: "index_bookings_on_session_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "producer"
    t.string "actors"
    t.datetime "year"
    t.string "country"
    t.integer "limit"
    t.string "story"
  end

  create_table "halls", force: :cascade do |t|
    t.integer "number"
    t.integer "row_num"
    t.integer "seat_num"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "places", force: :cascade do |t|
    t.integer "row"
    t.integer "seat"
    t.boolean "state"
    t.integer "hall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hall_id"], name: "index_places_on_hall_id"
  end

  create_table "session_places", force: :cascade do |t|
    t.integer "session_id", null: false
    t.integer "place_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["place_id"], name: "index_session_places_on_place_id"
    t.index ["session_id"], name: "index_session_places_on_session_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "date_time"
    t.integer "film_id", null: false
    t.integer "hall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["film_id"], name: "index_sessions_on_film_id"
    t.index ["hall_id"], name: "index_sessions_on_hall_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.boolean "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bookings", "sessions"
  add_foreign_key "bookings", "users"
  add_foreign_key "places", "halls"
  add_foreign_key "session_places", "places"
  add_foreign_key "session_places", "sessions"
  add_foreign_key "sessions", "films"
  add_foreign_key "sessions", "halls"
end
