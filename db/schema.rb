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

ActiveRecord::Schema.define(version: 20140819152449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attacks", force: true do |t|
    t.integer  "target_id",   null: false
    t.string   "target_type", null: false
    t.string   "attack_type", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "attacks", ["target_id"], name: "index_attacks_on_target_id", using: :btree

  create_table "characters", force: true do |t|
    t.integer  "user_id",                       null: false
    t.integer  "x_coordinate", default: 0,      null: false
    t.integer  "y_coordinate", default: 0,      null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "power_level",  default: 300,    null: false
    t.integer  "energy_level", default: 100,    null: false
    t.string   "name",         default: "User", null: false
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id", using: :btree

  create_table "non_player_characters", force: true do |t|
    t.integer  "x_coordinate",                                null: false
    t.integer  "y_coordinate",                                null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "power_level",  default: 300,                  null: false
    t.integer  "energy_level", default: 100,                  null: false
    t.string   "name",         default: "Frieza henchman",    null: false
    t.string   "type",         default: "NonPlayerCharacter", null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "worlds", force: true do |t|
    t.text     "terrain",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
