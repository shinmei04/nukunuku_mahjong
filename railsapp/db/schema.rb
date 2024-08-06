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

ActiveRecord::Schema[7.1].define(version: 2024_08_06_153805) do
  create_table "destinations", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "postal_code", limit: 8, null: false
    t.string "phone_number", limit: 13, null: false
    t.string "prefecture", null: false
    t.string "city", null: false
    t.string "address", null: false
    t.string "building"
    t.string "company_name"
    t.string "department_name"
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.bigint "sender_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sender_id"], name: "index_destinations_on_sender_id"
  end

  create_table "packages", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "item_name", null: false
    t.string "handling", limit: 15, null: false
    t.date "shipping_date", null: false
    t.date "desired_delivery_date", null: false
    t.string "desired_delivery_time", null: false
    t.integer "number_of_items", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "senders", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "postal_code", limit: 8, null: false
    t.string "phone_number", limit: 13, null: false
    t.string "prefecture", null: false
    t.string "city", null: false
    t.string "address", null: false
    t.string "building"
    t.string "company_name"
    t.string "department_name"
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "destinations", "senders"
end
