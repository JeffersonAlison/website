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

ActiveRecord::Schema.define(:version => 20131017185205) do

  create_table "banners", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "uf"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "author"
    t.text     "content"
    t.string   "ip"
    t.integer  "postnotice_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "postnotices", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "author"
    t.integer  "city_id"
    t.integer  "categorie_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "image"
    t.boolean  "featured"
    t.string   "video"
    t.text     "descbanner"
    t.integer  "reserved",     :default => 0
  end

  add_index "postnotices", ["categorie_id"], :name => "index_postnotices_on_categorie_id"
  add_index "postnotices", ["city_id"], :name => "index_postnotices_on_city_id"

# Could not dump table "users" because of following StandardError
#   Unknown type 'bool' for column 'admin'

end
