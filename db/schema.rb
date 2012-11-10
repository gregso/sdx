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

ActiveRecord::Schema.define(:version => 20121026090146) do

  create_table "gene_dev_resources", :force => true do |t|
    t.string   "off_location"
    t.string   "fl_name"
    t.string   "pj_role"
    t.string   "team_manager"
    t.string   "hired_date"
    t.string   "softdevid"
    t.string   "gis_exp"
    t.string   "current_project"
    t.string   "pj_manager"
    t.string   "pj_avail"
    t.string   "pj_group"
    t.string   "primary_entry"
    t.string   "dev_program"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
