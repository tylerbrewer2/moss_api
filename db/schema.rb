# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160608005452) do

  create_table "accounts", force: :cascade do |t|
    t.integer "user_id"
    t.string  "name"
    t.string  "type"
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id"

  create_table "transactions", force: :cascade do |t|
    t.integer "account_id"
    t.string  "date"
    t.float   "price"
    t.string  "category"
  end

  add_index "transactions", ["account_id"], name: "index_transactions_on_account_id"

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
  end

end
