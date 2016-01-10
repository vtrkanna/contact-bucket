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

ActiveRecord::Schema.define(version: 20160110131910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_details", force: :cascade do |t|
    t.integer  "user_id",                       null: false
    t.string   "address_type", default: "Home"
    t.boolean  "active",       default: false
    t.boolean  "primary",      default: false
    t.string   "field_name",   default: ""
    t.string   "field_value",  default: ""
    t.string   "addr1",        default: ""
    t.string   "addr2",        default: ""
    t.integer  "city_id"
    t.integer  "country_id"
    t.integer  "sequence",     default: 0
    t.datetime "created_by"
    t.datetime "updated_by"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name",                       null: false
    t.boolean  "active",     default: false
    t.datetime "created_by"
    t.datetime "updated_by"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "communication_details", force: :cascade do |t|
    t.integer  "user_id",                               null: false
    t.integer  "phone"
    t.string   "communication_type", default: "Mobile"
    t.boolean  "active",             default: false
    t.boolean  "primary",            default: false
    t.string   "field_name",         default: ""
    t.string   "field_value"
    t.integer  "sequence",           default: 0
    t.datetime "created_by"
    t.datetime "updated_by"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name",                       null: false
    t.boolean  "active",     default: false
    t.datetime "created_by"
    t.datetime "updated_by"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                              null: false
    t.string   "last_name"
    t.boolean  "active",                  default: false
    t.integer  "address_detail_id"
    t.integer  "communication_detail_id"
    t.integer  "role_id"
    t.datetime "created_by"
    t.datetime "updated_by"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "email",                   default: "",    null: false
    t.string   "encrypted_password",      default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
