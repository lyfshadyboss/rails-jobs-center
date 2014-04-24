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

ActiveRecord::Schema.define(version: 20140424100702) do

  create_table "admins", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true

  create_table "companies", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["email"], name: "index_companies_on_email", unique: true

  create_table "educations", force: true do |t|
    t.string   "school_name"
    t.string   "degree"
    t.string   "major"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "educations", ["resume_id"], name: "index_educations_on_resume_id"

  create_table "glories", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "glories", ["resume_id"], name: "index_glories_on_resume_id"

  create_table "interests", force: true do |t|
    t.string   "interest_title"
    t.text     "interest_detail"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interests", ["resume_id"], name: "index_interests_on_resume_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.integer  "amount"
    t.text     "description"
    t.text     "requirement"
    t.integer  "view_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resumes", force: true do |t|
    t.string   "title"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resumes", ["student_id"], name: "index_resumes_on_student_id"

  create_table "sample_works", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "demo_url"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sample_works", ["resume_id"], name: "index_sample_works_on_resume_id"

  create_table "skills", force: true do |t|
    t.string   "skill_title"
    t.text     "skill_detail"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["resume_id"], name: "index_skills_on_resume_id"

  create_table "students", force: true do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "start_date"
    t.string   "name"
    t.integer  "gender",              default: 0
    t.integer  "age",                 default: 20
    t.string   "social_id"
    t.date     "birthday"
    t.integer  "group",               default: 0
    t.string   "student_id"
    t.integer  "grade",               default: 0
    t.integer  "subject",             default: 0
    t.integer  "major",               default: 0
    t.text     "self_description"
    t.text     "teacher_description"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true

  create_table "work_experiences", force: true do |t|
    t.string   "company_name"
    t.string   "appointment"
    t.string   "duty"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_experiences", ["resume_id"], name: "index_work_experiences_on_resume_id"

end
