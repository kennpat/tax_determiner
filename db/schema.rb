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

ActiveRecord::Schema.define(version: 20150217195159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questions", force: :cascade do |t|
    t.string  "question"
    t.integer "score_value"
  end

  add_index "questions", ["question"], name: "index_questions_on_question", unique: true, using: :btree

  create_table "return_questions", force: :cascade do |t|
    t.integer "question_id"
    t.integer "return_id"
  end

  add_index "return_questions", ["return_id", "question_id"], name: "index_return_questions_on_return_id_and_question_id", unique: true, using: :btree

  create_table "returns", force: :cascade do |t|
    t.string   "return_type",                  null: false
    t.integer  "difficulty_score", default: 0, null: false
    t.string   "return_details",                            array: true
    t.string   "filer_experience"
    t.string   "filer_email"
    t.string   "filer_state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "returns", ["difficulty_score"], name: "index_returns_on_difficulty_score", using: :btree
  add_index "returns", ["return_type"], name: "index_returns_on_return_type", using: :btree

end
