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

ActiveRecord::Schema.define(:version => 20131214012001) do

  create_table "account_managers", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0,  :null => false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.integer  "agency_id",                              :null => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "account_managers", ["confirmation_token"], :name => "index_account_managers_on_confirmation_token", :unique => true
  add_index "account_managers", ["email"], :name => "index_account_managers_on_email", :unique => true
  add_index "account_managers", ["reset_password_token"], :name => "index_account_managers_on_reset_password_token", :unique => true
  add_index "account_managers", ["unlock_token"], :name => "index_account_managers_on_unlock_token", :unique => true

  create_table "agencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "authorizations", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.string   "token"
    t.string   "secret"
    t.string   "name"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.integer  "account_manager_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "demographics", :force => true do |t|
    t.integer  "spot_id"
    t.integer  "start_age"
    t.integer  "end_age"
    t.string   "gender"
    t.integer  "dma_id"
    t.string   "marital_status"
    t.string   "education"
    t.integer  "number_of_children"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "dmas", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "spots", :force => true do |t|
    t.integer  "client_id"
    t.string   "video_url"
    t.float    "view_value"
    t.float    "buy_value"
    t.integer  "paid_views_left"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "trait_joins", :force => true do |t|
    t.integer  "trait_id"
    t.integer  "traitable_id"
    t.string   "traitable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "traits", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vid_infos", :force => true do |t|
    t.string   "video_id"
    t.string   "provider"
    t.string   "title"
    t.string   "duration"
    t.date     "date"
    t.string   "thumbnail_small"
    t.string   "thumbnail_medium"
    t.string   "thumbnail_large"
    t.string   "embed_url"
    t.string   "embed_code"
    t.string   "width"
    t.string   "height"
    t.string   "keywords"
    t.string   "video_owner"
    t.string   "view_count"
    t.string   "url"
    t.integer  "spot_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.binary   "data"
    t.text     "description"
  end

end
