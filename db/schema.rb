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

ActiveRecord::Schema.define(version: 20170404120407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "prize_pools", force: :cascade do |t|
    t.integer  "questionaire_id"
    t.integer  "prize_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["prize_id"], name: "index_prize_pools_on_prize_id", using: :btree
    t.index ["questionaire_id"], name: "index_prize_pools_on_questionaire_id", using: :btree
  end

  create_table "prizes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.integer  "value"
    t.integer  "quantity_remaining"
    t.float    "win_probability"
    t.string   "voucher_code"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "gender"
    t.integer  "is_client"
    t.string   "company_name"
    t.string   "comapny_contact"
    t.text     "company_address"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "questionaires", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "profile_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["profile_id"], name: "index_questionaires_on_profile_id", using: :btree
  end

  create_table "responses", force: :cascade do |t|
    t.text     "content"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_responses_on_profile_id", using: :btree
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "prize_pools", "prizes"
  add_foreign_key "prize_pools", "questionaires"
  add_foreign_key "profiles", "users"
  add_foreign_key "questionaires", "profiles"
  add_foreign_key "responses", "profiles"
end
