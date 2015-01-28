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

ActiveRecord::Schema.define(version: 20150127225721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "returns", force: :cascade do |t|
    t.string   "return_type",                               null: false
    t.integer  "difficulty_score", default: 0,              null: false
    t.string   "return_details",                                         array: true
    t.string   "filer_experience", default: "Slim to none", null: false
    t.string   "filer_email"
    t.string   "filer_state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "returns", ["difficulty_score"], name: "index_returns_on_difficulty_score", using: :btree
  add_index "returns", ["return_type"], name: "index_returns_on_return_type", using: :btree

end
