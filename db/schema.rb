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

ActiveRecord::Schema.define(:version => 20130519185649) do

  create_table "committees", :force => true do |t|
    t.string    "title"
    t.string    "firstname"
    t.string    "surname"
    t.string    "position"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
    t.integer   "priority"
  end

  create_table "etonmedicalimgs", :force => true do |t|
    t.string    "caption"
    t.string    "imglink"
    t.string    "thumblink"
    t.integer   "etonmedical_id"
    t.timestamp "created_at",     :null => false
    t.timestamp "updated_at",     :null => false
  end

  create_table "etonmedicals", :force => true do |t|
    t.date      "date"
    t.string    "venue"
    t.string    "title"
    t.text      "content"
    t.integer   "committee_id"
    t.timestamp "created_at",   :null => false
    t.timestamp "updated_at",   :null => false
    t.text      "customhtml"
  end

  create_table "eventitemimgs", :force => true do |t|
    t.string    "caption"
    t.string    "imglink"
    t.string    "thumblink"
    t.integer   "eventitem_id"
    t.timestamp "created_at",   :null => false
    t.timestamp "updated_at",   :null => false
  end

  create_table "eventitems", :force => true do |t|
    t.date      "date"
    t.string    "venue"
    t.string    "title"
    t.text      "content"
    t.timestamp "created_at",   :null => false
    t.timestamp "updated_at",   :null => false
    t.integer   "committee_id"
    t.text      "customhtml"
  end

  create_table "newsitemimgs", :force => true do |t|
    t.string    "caption"
    t.string    "imglink"
    t.string    "thumblink"
    t.integer   "newsitem_id"
    t.timestamp "created_at",                 :null => false
    t.timestamp "updated_at",                 :null => false
    t.integer   "position",    :default => 0
  end

  create_table "newsitems", :force => true do |t|
    t.date      "date"
    t.string    "title"
    t.text      "content"
    t.timestamp "created_at",   :null => false
    t.timestamp "updated_at",   :null => false
    t.integer   "committee_id"
    t.text      "customhtml"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text      "message"
    t.string    "username"
    t.integer   "item"
    t.string    "table"
    t.integer   "month"
    t.integer   "year"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "users", :force => true do |t|
    t.string    "email",                  :default => "", :null => false
    t.string    "encrypted_password",     :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",          :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at",                             :null => false
    t.timestamp "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
