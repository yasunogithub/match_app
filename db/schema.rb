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

ActiveRecord::Schema.define(version: 2019_04_09_023527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "teacher_id", null: false
    t.bigint "room_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_entries_on_room_id"
    t.index ["teacher_id"], name: "index_entries_on_teacher_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "user_id", default: 0, null: false
    t.bigint "teacher_id", default: 0, null: false
    t.bigint "room_id", default: 0, null: false
    t.text "content", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sent_user", null: false
    t.index ["room_id"], name: "index_messages_on_room_id"
    t.index ["teacher_id"], name: "index_messages_on_teacher_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age", null: false
    t.string "email", default: "", null: false
    t.string "skype_id", null: false
    t.string "university", null: false
    t.string "subject", null: false
    t.string "reference_book", default: "", null: false
    t.text "etc", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "faculty", null: false
    t.string "department", null: false
    t.integer "grade", null: false
    t.text "introduction", null: false
    t.index ["confirmation_token"], name: "index_teachers_on_confirmation_token", unique: true
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.integer "age", null: false
    t.string "skype_id", null: false
    t.string "favorite_subject", null: false
    t.string "weak_subject", null: false
    t.text "etc", default: "", null: false
    t.string "university", null: false
    t.string "faculty", null: false
    t.string "department", null: false
    t.string "reference_book", default: "", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "entries", "rooms"
  add_foreign_key "entries", "teachers"
  add_foreign_key "entries", "users"
  add_foreign_key "messages", "rooms"
  add_foreign_key "messages", "teachers"
  add_foreign_key "messages", "users"
end
