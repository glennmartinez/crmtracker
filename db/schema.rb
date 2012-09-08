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

ActiveRecord::Schema.define(:version => 20120903223340) do

  create_table "clients", :force => true do |t|
    t.string   "firstname"
    t.string   "surname"
    t.string   "email"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "clients", ["project_id"], :name => "index_clients_on_project_id"

  create_table "contractors", :force => true do |t|
    t.string   "firstname"
    t.string   "surname"
    t.string   "email"
    t.string   "active"
    t.integer  "hourly_rate"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "labouritems", :force => true do |t|
    t.string   "description"
    t.integer  "hours"
    t.integer  "total"
    t.integer  "contractor_id"
    t.string   "contractor_name"
    t.integer  "quote_id"
    t.integer  "contractor_rate"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "labouritems", ["quote_id"], :name => "index_labouritems_on_quote_id"

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.integer  "client_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "projects", ["client_id"], :name => "index_projects_on_client_id"

  create_table "projectships", :force => true do |t|
    t.integer  "project_id"
    t.integer  "contractor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "quotes", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "quotes", ["project_id"], :name => "index_quotes_on_project_id"

  create_table "quoteships", :force => true do |t|
    t.integer  "quote_id"
    t.integer  "contractor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
