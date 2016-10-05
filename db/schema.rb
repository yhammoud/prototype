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

ActiveRecord::Schema.define(version: 20161005033305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "number"
    t.string   "name"
    t.integer  "subject_id"
    t.string   "code_number"
    t.index ["code_number"], name: "index_courses_on_code_number", unique: true, using: :btree
    t.index ["subject_id"], name: "index_courses_on_subject_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "code"
    t.index ["code"], name: "index_subjects_on_code", unique: true, using: :btree
  end

  create_table "tutor_courses", id: false, force: :cascade do |t|
    t.integer "course_id"
    t.integer "tutor_id"
    t.index ["course_id", "tutor_id"], name: "index_tutor_courses_on_course_id_and_tutor_id", unique: true, using: :btree
    t.index ["course_id"], name: "index_tutor_courses_on_course_id", using: :btree
    t.index ["tutor_id"], name: "index_tutor_courses_on_tutor_id", using: :btree
  end

  create_table "tutors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_tutors_on_user_id", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",           default: "", null: false
    t.integer  "is_admin",        default: 0
    t.string   "password_digest", default: "", null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "is_tutor",        default: 0
    t.date     "birthday"
    t.date     "grad_year"
    t.string   "gender"
    t.string   "major"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
