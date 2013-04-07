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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130407203127) do

  create_table "courses", :force => true do |t|
    t.integer "course_id"
    t.string  "topic"
    t.integer "tutor_id"
    t.text    "description"
    t.text    "syllabus"
    t.integer "capcity"
  end

  create_table "sessions", :force => true do |t|
    t.integer  "session_id"
    t.integer  "course_id"
    t.datetime "start_time"
    t.datetime "end_time"
  end

  create_table "users", :force => true do |t|
    t.integer "user_id"
    t.string  "email"
    t.string  "name"
    t.text    "description"
  end

  create_table "users_courses", :force => true do |t|
    t.integer "user_id"
    t.integer "course_id"
  end

end
