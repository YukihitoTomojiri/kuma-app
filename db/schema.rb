# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_01_10_082413) do

  create_table "incidents", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "experience_years_id", null: false
    t.string "type_id", null: false
    t.string "case_level_id", null: false
    t.string "management_level_id", null: false
    t.string "place", null: false
    t.datetime "date", null: false
    t.string "patient_id", null: false
    t.integer "age_id", null: false
    t.integer "gender_id", null: false
    t.text "case_content", null: false
    t.text "opponent_factor", null: false
    t.text "staff_factor", null: false
    t.text "improvement_point", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
