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

ActiveRecord::Schema.define(version: 20180311064617) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.integer "limit"
    t.integer "owner_id"
    t.boolean "is_payed", default: false
    t.boolean "is_private", default: false
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "league_type"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.integer "current_lineup", default: [], array: true
    t.float "total_score"
    t.bigint "league_id"
    t.index ["league_id"], name: "index_teams_on_league_id"
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "uname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
  end

  create_table "weeks", force: :cascade do |t|
    t.integer "number"
    t.bigint "team_id"
    t.integer "lineup", default: [], array: true
    t.float "score"
    t.index ["team_id"], name: "index_weeks_on_team_id"
  end

  add_foreign_key "teams", "leagues"
  add_foreign_key "teams", "users"
  add_foreign_key "weeks", "teams"
end
