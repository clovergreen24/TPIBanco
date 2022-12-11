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

ActiveRecord::Schema[7.0].define(version: 2022_12_11_025334) do
  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.string "motive"
    t.integer "client_id"
    t.integer "office_id"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_appointments_on_client_id"
    t.index ["employee_id"], name: "index_appointments_on_employee_id"
    t.index ["office_id"], name: "index_appointments_on_office_id"
  end

  create_table "localities", force: :cascade do |t|
    t.string "name"
    t.string "province"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offices", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "locality_id"
    t.index ["locality_id"], name: "index_offices_on_locality_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "day"
    t.time "start_time"
    t.time "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "office_id"
    t.index ["office_id"], name: "index_schedules_on_office_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.string "crypted_password"
    t.string "salt"
  end

  add_foreign_key "appointments", "offices"
  add_foreign_key "appointments", "users", column: "client_id"
  add_foreign_key "appointments", "users", column: "employee_id"
  add_foreign_key "offices", "localities"
  add_foreign_key "schedules", "offices"
end
