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

ActiveRecord::Schema.define(version: 20170618222057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "quests", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.text "invite_msg"
    t.text "start_msg"
    t.text "final_msg"
    t.index ["user_id"], name: "index_quests_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.boolean "role", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "quest_id"
    t.index ["quest_id"], name: "index_roles_on_quest_id"
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "answer"
    t.bigint "quest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "complete", default: false
    t.text "clue1"
    t.text "clue2"
    t.text "clue3"
    t.integer "clue_timer"
    t.boolean "answer_check", default: false
    t.text "answer_comment"
    t.text "skip_comment"
    t.index ["quest_id"], name: "index_tasks_on_quest_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "quests", "users"
  add_foreign_key "roles", "quests"
  add_foreign_key "roles", "users"
end
