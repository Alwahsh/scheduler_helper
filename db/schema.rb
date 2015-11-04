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

ActiveRecord::Schema.define(version: 20151103205454) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "type"
    t.decimal  "lecture_length"
    t.decimal  "lecs_per_week"
    t.decimal  "secs_per_week"
    t.decimal  "section_length"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "day_collections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "number_of_students"
    t.integer  "number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "type"
    t.integer  "capacity"
    t.boolean  "projector_support"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer  "number_of_students"
    t.integer  "number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "segment_collections", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "segments", force: :cascade do |t|
    t.decimal  "start"
    t.decimal  "end"
    t.integer  "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "staff_members", force: :cascade do |t|
    t.decimal  "max_hours_per_day"
    t.string   "name"
    t.string   "code"
    t.decimal  "score"
    t.decimal  "min_gap"
    t.decimal  "max_gap"
    t.string   "type"
    t.string   "email"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "systems", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "year_classes", force: :cascade do |t|
    t.string   "type"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
