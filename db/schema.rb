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

ActiveRecord::Schema.define(version: 20170427012706) do

  create_table "dcategories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "other_expenses", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "trip_id"
    t.date     "day"
    t.string   "description"
    t.decimal  "amount",      precision: 8, scale: 2
    t.index ["trip_id"], name: "index_other_expenses_on_trip_id"
  end


  create_table "receipts", force: :cascade do |t|

    t.string   "name"
    t.string   "attachment"
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["imageable_type", "imageable_id"], name: "index_receipts_on_imageable_type_and_imageable_id"
  end

  create_table "registration_fees", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "trip_id"
    t.decimal  "amount"
    t.index ["trip_id"], name: "index_registration_fees_on_trip_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "item"
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "dest"
    t.integer  "trip_id"
    t.index ["trip_id"], name: "index_transactions_on_trip_id"
  end

  create_table "transportations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "day"
    t.string   "from"
    t.string   "to"
    t.integer  "mileage"
    t.decimal  "amount"
    t.decimal  "airfare"
    t.decimal  "rental_car"
    t.decimal  "bus_train"
    t.integer  "trip_id"
    t.index ["trip_id"], name: "index_transportations_on_trip_id"
  end

  create_table "transports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "place"
    t.text     "purpose"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
