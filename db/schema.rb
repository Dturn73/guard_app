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

ActiveRecord::Schema.define(version: 20150303220771) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "qwester_answer_stores", force: :cascade do |t|
    t.string   "session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "preserved"
  end

  create_table "qwester_answer_stores_answers", id: false, force: :cascade do |t|
    t.integer "answer_id"
    t.integer "answer_store_id"
  end

  create_table "qwester_answer_stores_questionnaires", id: false, force: :cascade do |t|
    t.integer "questionnaire_id"
    t.integer "answer_store_id"
  end

  create_table "qwester_answers", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.float    "weighting",   default: 0.0
  end

  create_table "qwester_answers_rule_sets", id: false, force: :cascade do |t|
    t.integer "answer_id"
    t.integer "rule_set_id"
  end

  create_table "qwester_ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qwester_ckeditor_assets", ["assetable_type", "assetable_id"], name: "qwester_idx_ckeditor_assetable", using: :btree
  add_index "qwester_ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "qwester_idx_ckeditor_assetable_type", using: :btree

  create_table "qwester_presentation_questionnaires", force: :cascade do |t|
    t.integer  "questionnaire_id"
    t.integer  "presentation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "qwester_presentations", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "default"
  end

  create_table "qwester_questionnaires", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "button_image_file_name"
    t.string   "button_image_content_type"
    t.integer  "button_image_file_size"
    t.datetime "button_image_updated_at"
    t.boolean  "must_complete"
  end

  create_table "qwester_questionnaires_questions", force: :cascade do |t|
    t.integer  "questionnaire_id"
    t.integer  "question_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qwester_questions", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ref"
    t.boolean  "multi_answer"
  end

  create_table "qwester_rule_sets", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "rule"
    t.string   "link_text"
    t.string   "presentation"
  end

end
