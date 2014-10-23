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

ActiveRecord::Schema.define(version: 20141015182425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campus", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "number"
    t.string   "district"
    t.integer  "cep"
    t.string   "state"
    t.string   "city"
    t.string   "phoneFixed"
    t.string   "phoneFax"
    t.integer  "university_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "campus", ["university_id"], name: "index_campus_on_university_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departments", ["course_id"], name: "index_departments_on_course_id", using: :btree

  create_table "disciplines", force: true do |t|
    t.string   "name"
    t.string   "period"
    t.integer  "loadHourly"
    t.integer  "course_id"
    t.integer  "teacher_id"
    t.string   "matrix"
    t.string   "integer"
    t.string   "preRequisite"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "disciplines", ["course_id"], name: "index_disciplines_on_course_id", using: :btree
  add_index "disciplines", ["teacher_id"], name: "index_disciplines_on_teacher_id", using: :btree

  create_table "disciplines_turmas", id: false, force: true do |t|
    t.integer "discipline_id"
    t.integer "turma_id"
  end

  create_table "enrollments", force: true do |t|
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "enrollments", ["student_id"], name: "index_enrollments_on_student_id", using: :btree

  create_table "items", force: true do |t|
    t.integer  "enrollment_id"
    t.integer  "turma_id"
    t.integer  "discipline_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["discipline_id"], name: "index_items_on_discipline_id", using: :btree
  add_index "items", ["enrollment_id"], name: "index_items_on_enrollment_id", using: :btree
  add_index "items", ["turma_id"], name: "index_items_on_turma_id", using: :btree

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "cpf"
    t.string   "rg"
    t.date     "dtBirth"
    t.string   "sex"
    t.string   "stateCivil"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "state"
    t.string   "city"
    t.string   "address"
    t.string   "number"
    t.string   "district"
    t.integer  "cep"
    t.string   "certifications"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "name"
    t.string   "cpf"
    t.string   "rg"
    t.date     "dtBirth"
    t.string   "sex"
    t.string   "stateCivil"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "state"
    t.string   "city"
    t.string   "address"
    t.string   "number"
    t.string   "district"
    t.integer  "cep"
    t.string   "certifications"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "turmas", force: true do |t|
    t.string   "name"
    t.string   "period"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universities", force: true do |t|
    t.string   "name"
    t.integer  "qtdCampus"
    t.string   "address"
    t.string   "number"
    t.string   "district"
    t.integer  "cep"
    t.string   "state"
    t.string   "city"
    t.string   "phoneFixed"
    t.string   "phoneFax"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
