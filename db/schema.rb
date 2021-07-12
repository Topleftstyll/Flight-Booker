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

ActiveRecord::Schema.define(version: 2021_07_12_223940) do

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "departing_flights_id"
    t.integer "arriving_flights_id"
    t.index ["arriving_flights_id"], name: "index_airports_on_arriving_flights_id"
    t.index ["departing_flights_id"], name: "index_airports_on_departing_flights_id"
  end

  create_table "flights", force: :cascade do |t|
    t.integer "from_airport_id", null: false
    t.integer "to_airport_id", null: false
    t.datetime "date"
    t.integer "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["from_airport_id"], name: "index_flights_on_from_airport_id"
    t.index ["to_airport_id"], name: "index_flights_on_to_airport_id"
  end

  add_foreign_key "airports", "flights", column: "arriving_flights_id"
  add_foreign_key "airports", "flights", column: "departing_flights_id"
  add_foreign_key "flights", "airports", column: "from_airport_id"
  add_foreign_key "flights", "airports", column: "to_airport_id"
end
