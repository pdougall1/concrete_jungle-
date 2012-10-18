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

ActiveRecord::Schema.define(:version => 20121016025503) do

  create_table "donations", :force => true do |t|
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.integer "amount"
    t.string  "destination", :limit => nil
    t.string  "food_type",   :limit => nil
    t.string  "food_source", :limit => nil
  end

  add_index "donations", ["id"], :name => "sqlite_autoindex_donations_1", :unique => true

  create_table "nums", :force => true do |t|
    t.integer  "num"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

end
