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

ActiveRecord::Schema.define(version: 20160326000733) do

  create_table "jobby_jobs", force: :cascade do |t|
    t.string   "company"
    t.string   "job_title"
    t.string   "website"
    t.integer  "rating"
    t.string   "street_address"
    t.string   "city"
    t.string   "zip_code"
    t.string   "contact"
    t.string   "phone"
    t.string   "email"
    t.string   "job_posting_url"
    t.date     "resume_to_be_sent"
    t.date     "resume_actually_sent"
    t.text     "description"
    t.text     "follow_up"
    t.text     "challenge"
    t.datetime "interview"
    t.text     "interview_info"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
