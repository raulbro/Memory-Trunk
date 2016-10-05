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

ActiveRecord::Schema.define(version: 20160220172559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.integer  "memory_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "examples", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.text     "comment"
    t.date     "Created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memories", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "memory_description"
    t.string   "memory_title"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "memory_display_picture_file_name"
    t.string   "memory_display_picture_content_type"
    t.integer  "memory_display_picture_file_size"
    t.datetime "memory_display_picture_updated_at"
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "album_id"
    t.string   "picture_data_file_name"
    t.string   "picture_data_content_type"
    t.integer  "picture_data_file_size"
    t.datetime "picture_data_updated_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id"
    t.integer  "memory_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "biography"
    t.string   "city_born"
    t.date     "date_of_birth"
    t.text     "hobbie"
    t.text     "dream"
    t.text     "job_history"
    t.text     "fear"
    t.text     "other"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "profile_picture_file_name"
    t.string   "profile_picture_content_type"
    t.integer  "profile_picture_file_size"
    t.datetime "profile_picture_updated_at"
  end

  create_table "uploads", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uploaded_file_file_name"
    t.string   "uploaded_file_content_type"
    t.integer  "uploaded_file_file_size"
    t.datetime "uploaded_file_updated_at"
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
    t.string   "name",                                null: false
    t.string   "last_name",                           null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "videos", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "memory_id"
    t.string   "video_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
