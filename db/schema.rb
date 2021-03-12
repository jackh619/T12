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

ActiveRecord::Schema.define(version: 2021_03_01_043010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "genre"
    t.float "price", null: false
    t.datetime "published_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "commitments", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "event_id"
    t.string "event_type"
    t.datetime "date_time"
    t.string "location"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_commitments_on_event_id"
    t.index ["student_id"], name: "index_commitments_on_student_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.string "event_type"
    t.datetime "date_time"
    t.string "location"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  # create_table "meetings", force: :cascade do |t|
  #   t.string "name"
  #   t.datetime "start_time"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  # end

  create_table "students", force: :cascade do |t|
    t.boolean "is_admin"
    t.string "first_name"
    t.string "last_name"
    t.integer "class_year"
    t.string "email"
    t.string "phone"
    t.integer "num_fball"
    t.integer "num_bball"
    t.integer "num_other"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "google_token"
    t.string "google_refresh_token"
  end

end
