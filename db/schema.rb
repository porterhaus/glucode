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

ActiveRecord::Schema.define(version: 20150924201957) do

  create_table "activities", force: :cascade do |t|
    t.integer  "subject_id"
    t.string   "subject_type"
    t.string   "name",         null: false
    t.string   "direction",    null: false
    t.integer  "user_id",      null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "activities", ["subject_id", "subject_type"], name: "index_activities_on_subject_id_and_subject_type"
  add_index "activities", ["user_id"], name: "index_activities_on_user_id"

  create_table "bgtests", force: :cascade do |t|
    t.integer  "value"
    t.string   "category"
    t.string   "time_of_day"
    t.text     "comments"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bgtests", ["user_id"], name: "index_bgtests_on_user_id"

  create_table "injections", force: :cascade do |t|
    t.float    "num_of_units_taken"
    t.string   "category"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "injections", ["user_id"], name: "index_injections_on_user_id"

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.integer  "carbohydrates"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "meals", ["user_id"], name: "index_meals_on_user_id"

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
    t.string   "role"
    t.string   "auth_token"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
