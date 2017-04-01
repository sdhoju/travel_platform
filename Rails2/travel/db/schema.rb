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

ActiveRecord::Schema.define(version: 20170401015100) do

  create_table "daily_expenses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "type"
    t.date     "day"
    t.decimal  "amount",     precision: 8, scale: 2
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "item_name"
    t.decimal  "item_amount",    precision: 10
    t.integer  "transaction_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["transaction_id"], name: "index_items_on_transaction_id", using: :btree
  end

  create_table "other_expenses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.date     "day"
    t.text     "description", limit: 65535
    t.decimal  "amount",                    precision: 8, scale: 2
  end

  create_table "registration_fees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "type"
    t.decimal  "amount",     precision: 8, scale: 2
  end

  create_table "totals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "item"
    t.decimal  "amount",     precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "dest"
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
  end

  create_table "trips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "items", "transactions"
end
