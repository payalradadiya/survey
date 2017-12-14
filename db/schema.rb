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

ActiveRecord::Schema.define(version: 20171213132136) do

  create_table "question_types", force: :cascade do |t|
    t.string "name"
    t.integer "control_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "survey_questions", force: :cascade do |t|
    t.string "question_title"
    t.string "question_hint"
    t.boolean "is_required", default: true
    t.integer "order"
    t.integer "survey_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "question_type_id"
    t.integer "date"
    t.integer "date_separator"
    t.integer "rating"
    t.integer "rating_number"
    t.string "choice"
    t.index ["question_type_id"], name: "index_survey_questions_on_question_type_id"
    t.index ["survey_type_id"], name: "index_survey_questions_on_survey_type_id"
  end

  create_table "survey_screens", force: :cascade do |t|
    t.integer "screen_type"
    t.string "short_text"
    t.text "long_text"
    t.string "button_text"
    t.integer "survey_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_type_id"], name: "index_survey_screens_on_survey_type_id"
  end

  create_table "survey_types", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
