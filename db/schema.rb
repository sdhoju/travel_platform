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

ActiveRecord::Schema.define(version: 20170425045603) do

  create_table "daily_expenses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "type"
    t.date     "day"
    t.decimal  "amount",     precision: 8, scale: 2
  end

  create_table "dcategories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "other_expenses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.date     "day"
    t.text     "description", limit: 65535
    t.decimal  "amount",                    precision: 8, scale: 2
    t.integer  "trip_id"
    t.index ["trip_id"], name: "index_other_expenses_on_trip_id", using: :btree
  end

  create_table "receipts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "attachment"
    t.string   "imageable_type"
    t.integer  "imageable_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["imageable_type", "imageable_id"], name: "index_receipts_on_imageable_type_and_imageable_id", using: :btree
  end

  create_table "registration_fees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "name"
    t.decimal  "amount",     precision: 8, scale: 2
    t.integer  "trip_id"
    t.index ["trip_id"], name: "index_registration_fees_on_trip_id", using: :btree
  end

  create_table "totals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "item"
    t.decimal  "amount",       precision: 10
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "dest"
    t.integer  "dcategory_id"
    t.integer  "trip_id"
    t.index ["trip_id"], name: "index_transactions_on_trip_id", using: :btree
  end

  create_table "transportations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.date     "day"
    t.string   "from"
    t.string   "to"
    t.integer  "mileage"
    t.decimal  "amount",     precision: 8, scale: 2
    t.decimal  "airfare",    precision: 8, scale: 2
    t.decimal  "rental_car", precision: 8, scale: 2
    t.decimal  "bus_train",  precision: 8, scale: 2
    t.integer  "trip_id"
    t.index ["trip_id"], name: "index_transportations_on_trip_id", using: :btree
  end

  create_table "trips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "place"
    t.text     "purpose",    limit: 65535
    t.integer  "user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "other_expenses", "trips"
  add_foreign_key "registration_fees", "trips"
  add_foreign_key "transactions", "trips"
  add_foreign_key "transportations", "trips"
end
