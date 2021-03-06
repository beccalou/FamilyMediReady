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

ActiveRecord::Schema.define(version: 20140325205856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "families", force: true do |t|
    t.integer  "parent_id"
    t.integer  "child_id"
    t.text     "parent_role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "families", ["child_id"], name: "index_families_on_child_id", using: :btree
  add_index "families", ["parent_id"], name: "index_families_on_parent_id", using: :btree

  create_table "medical_histories", force: true do |t|
    t.boolean  "arthritis"
    t.boolean  "birth_defects"
    t.boolean  "asthma"
    t.boolean  "depression"
    t.boolean  "diabetes"
    t.boolean  "cancer"
    t.text     "cancer_type"
    t.boolean  "hearing_loss"
    t.boolean  "heart_disease"
    t.boolean  "vision_problems"
    t.boolean  "high_cholesterol"
    t.boolean  "high_blood_pressure"
    t.boolean  "infertility"
    t.boolean  "mental_retardation"
    t.boolean  "obesity"
    t.boolean  "osteoporosis"
    t.boolean  "stroke"
    t.boolean  "vision_loss"
    t.text     "allergic_to"
    t.text     "past_meds"
    t.text     "current_meds"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "medical_histories", ["person_id"], name: "index_medical_histories_on_person_id", using: :btree

  create_table "people", force: true do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.text     "gender"
    t.date     "birthday"
    t.boolean  "living"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["user_id"], name: "index_people_on_user_id", using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
