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

ActiveRecord::Schema.define(version: 20150319054808) do

  create_table "projects", force: true do |t|
    t.integer  "zoho_id"
    t.string   "name"
    t.decimal  "amount"
    t.integer  "zoho_account_id"
    t.string   "stage"
    t.string   "project_type"
    t.decimal  "probability"
    t.string   "next_step"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.decimal  "expected_revenue"
    t.string   "system_type"
    t.string   "battery_type"
    t.string   "service_area"
  end

  add_index "projects", ["zoho_id"], name: "index_projects_on_zoho_id"

end
