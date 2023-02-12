# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_12_010313) do

  create_table "comments", force: :cascade do |t|
    t.integer "student_id"
    t.integer "meangirl_id"
    t.string "comment"
    t.integer "level_of_uncool"
    t.boolean "like"
    t.string "incriminating_photo"
  end

  create_table "meangirls", force: :cascade do |t|
    t.string "name"
    t.integer "number_of_parties"
    t.string "headshot_photo"
    t.string "superlative"
    t.integer "year"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "type_of_uncool"
    t.string "yearbook_photo"
    t.integer "year"
  end

end
