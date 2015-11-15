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

ActiveRecord::Schema.define(:version => 20151107223022) do

  create_table "properties", :force => true do |t|
    t.string   "title",                                      :null => false
    t.string   "address",                                    :null => false
    t.string   "property_type", :limit => 30,                :null => false
    t.string   "status",        :limit => 30,                :null => false
    t.text     "overview"
    t.integer  "area",                        :default => 0
    t.integer  "price",                       :default => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  add_index "properties", ["address"], :name => "index_properties_on_address"
  add_index "properties", ["property_type"], :name => "index_properties_on_property_type"
  add_index "properties", ["status", "property_type"], :name => "index_properties_on_status_and_property_type"

end
