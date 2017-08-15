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

ActiveRecord::Schema.define(:version => 20170611113055) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ar_internal_metadata", :id => false, :force => true do |t|
    t.string   "key",        :limit => nil, :null => false
    t.string   "value",      :limit => nil
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.string   "image"
    t.integer  "bytes"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "album_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "name",       :limit => nil
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "user_id"
  end

  add_index "projects", ["user_id", "created_at"], :name => "index_projects_on_user_id_and_created_at"

  create_table "tasks", :force => true do |t|
    t.string   "name",       :limit => nil
    t.integer  "priority"
    t.boolean  "status"
    t.datetime "deadline"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "user_id"
    t.integer  "project_id"
    t.text     "comment"
  end

  add_index "tasks", ["project_id", "created_at"], :name => "index_tasks_on_project_id_and_created_at"
  add_index "tasks", ["user_id", "created_at"], :name => "index_tasks_on_user_id_and_created_at"

  create_table "users", :force => true do |t|
    t.string   "first_name",          :limit => nil
    t.string   "last_name",           :limit => nil
    t.string   "email",               :limit => nil
    t.string   "password",            :limit => nil
    t.string   "password_digest",     :limit => nil
    t.string   "remember_token",      :limit => nil
    t.string   "provider",            :limit => nil
    t.string   "uid",                 :limit => nil
    t.string   "oauth_token",         :limit => nil
    t.datetime "oauth_expires_at"
    t.string   "token",               :limit => nil
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "avatar_file_name",    :limit => nil
    t.string   "avatar_content_type", :limit => nil
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
