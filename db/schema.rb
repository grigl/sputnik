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

ActiveRecord::Schema.define(:version => 20140317164726) do

  create_table "activities", :force => true do |t|
    t.text     "lead_text"
    t.text     "full_text"
    t.text     "features"
    t.string   "video"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "title"
    t.integer  "main_photo_id"
  end

  create_table "activities_lists", :id => false, :force => true do |t|
    t.integer "activity_id"
    t.integer "list_id"
  end

  create_table "activity_photo_translations", :force => true do |t|
    t.integer  "activity_photo_id"
    t.string   "locale",            :null => false
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "title"
  end

  add_index "activity_photo_translations", ["activity_photo_id"], :name => "index_activity_photo_translations_on_activity_photo_id"
  add_index "activity_photo_translations", ["locale"], :name => "index_activity_photo_translations_on_locale"

  create_table "activity_photos", :force => true do |t|
    t.string   "file"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "title"
    t.integer  "activity_id"
  end

  create_table "activity_translations", :force => true do |t|
    t.integer  "activity_id"
    t.string   "locale",      :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "title"
    t.text     "lead_text"
    t.text     "full_text"
    t.text     "features"
  end

  add_index "activity_translations", ["activity_id"], :name => "index_activity_translations_on_activity_id"
  add_index "activity_translations", ["locale"], :name => "index_activity_translations_on_locale"

  create_table "list_translations", :force => true do |t|
    t.integer  "list_id"
    t.string   "locale",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
    t.text     "lead_text"
  end

  add_index "list_translations", ["list_id"], :name => "index_list_translations_on_list_id"
  add_index "list_translations", ["locale"], :name => "index_list_translations_on_locale"

  create_table "lists", :force => true do |t|
    t.string   "title"
    t.text     "lead_text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "photo"
  end

end
