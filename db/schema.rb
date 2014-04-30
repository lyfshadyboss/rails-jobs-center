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

ActiveRecord::Schema.define(version: 20140430082849) do

  create_table "admins", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true

  create_table "assets", force: true do |t|
    t.string   "title"
    t.string   "file_name"
    t.integer  "student_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assets", ["company_id"], name: "index_assets_on_company_id"
  add_index "assets", ["student_id"], name: "index_assets_on_student_id"

  create_table "comments", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "resume_id"
    t.integer  "post_id"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"
  add_index "comments", ["resume_id"], name: "index_comments_on_resume_id"

  create_table "companies", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.string   "address"
    t.string   "telephone"
    t.string   "name"
    t.text     "introduce"
    t.integer  "company_type",       default: 0
    t.integer  "company_scale",      default: 0
    t.string   "site"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["email"], name: "index_companies_on_email", unique: true

  create_table "company_scales", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "genders", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "glories", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "glories", ["resume_id"], name: "index_glories_on_resume_id"

  create_table "grades", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interests", force: true do |t|
    t.string   "title"
    t.text     "detail"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interests", ["resume_id"], name: "index_interests_on_resume_id"

  create_table "majors", force: true do |t|
    t.string   "name"
    t.text     "introduce"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_sub_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.integer  "post_type"
    t.integer  "post_sub_type"
    t.integer  "amount"
    t.text     "description"
    t.integer  "salary"
    t.integer  "view_count"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["company_id"], name: "index_posts_on_company_id"

  create_table "requirements", force: true do |t|
    t.string   "title"
    t.string   "detail"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "requirements", ["post_id"], name: "index_requirements_on_post_id"

  create_table "resumes", force: true do |t|
    t.string   "title"
    t.text     "introduce"
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
    t.string   "title"
    t.text     "detail"
    t.integer  "resume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["resume_id"], name: "index_skills_on_resume_id"

  create_table "students", force: true do |t|
    t.string   "email",               default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.string   "name"
    t.integer  "gender",              default: 0
    t.integer  "age"
    t.string   "social_id"
    t.date     "birthday"
    t.string   "student_id"
    t.integer  "group",               default: 0
    t.integer  "grade",               default: 0
    t.integer  "subject",             default: 0
    t.integer  "major",               default: 0
    t.string   "address"
    t.string   "telephone"
    t.string   "tencent_qq"
    t.text     "self_description"
    t.text     "teacher_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.text     "introduce"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
