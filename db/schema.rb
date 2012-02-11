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

ActiveRecord::Schema.define(:version => 20120211054252) do

  create_table "cities", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "company_name"
    t.string   "client_name"
    t.string   "email"
    t.string   "mobile"
    t.string   "telephone"
    t.string   "fax"
    t.string   "house"
    t.string   "street"
    t.string   "city"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "tin"
  end

  create_table "industries", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "leads", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "marketings", :force => true do |t|
    t.string    "client_name"
    t.string    "company_name"
    t.integer   "industry_id"
    t.integer   "lead_id"
    t.integer   "product_id"
    t.string    "street"
    t.string    "barangay"
    t.integer   "province_id"
    t.integer   "city_id"
    t.string    "mobile"
    t.string    "telephone"
    t.string    "fax"
    t.string    "email"
    t.timestamp "created_at",   :null => false
    t.timestamp "updated_at",   :null => false
  end

  add_index "marketings", ["city_id"], :name => "index_marketings_on_city_id"
  add_index "marketings", ["industry_id"], :name => "index_marketings_on_industry_id"
  add_index "marketings", ["lead_id"], :name => "index_marketings_on_lead_id"
  add_index "marketings", ["product_id"], :name => "index_marketings_on_product_id"
  add_index "marketings", ["province_id"], :name => "index_marketings_on_province_id"

  create_table "products", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "provinces", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "sales", :force => true do |t|
    t.string    "client_name"
    t.string    "company_name"
    t.integer   "industry_id"
    t.integer   "lead_id"
    t.integer   "product_id"
    t.string    "street"
    t.string    "barangay"
    t.integer   "province_id"
    t.integer   "city_id"
    t.string    "zip_code"
    t.string    "mobile"
    t.string    "telephone"
    t.string    "fax"
    t.string    "email"
    t.string    "tin"
    t.string    "vat_exemption"
    t.string    "inquiry"
    t.timestamp "created_at",    :null => false
    t.timestamp "updated_at",    :null => false
  end

  add_index "sales", ["city_id"], :name => "index_sales_on_city_id"
  add_index "sales", ["industry_id"], :name => "index_sales_on_industry_id"
  add_index "sales", ["lead_id"], :name => "index_sales_on_lead_id"
  add_index "sales", ["product_id"], :name => "index_sales_on_product_id"
  add_index "sales", ["province_id"], :name => "index_sales_on_province_id"

  create_table "salescalls", :force => true do |t|
    t.string    "company_name"
    t.string    "client_name"
    t.string    "industry_type"
    t.string    "lead_source"
    t.string    "model"
    t.string    "street_address"
    t.string    "barangay"
    t.string    "province"
    t.string    "city"
    t.string    "zip_code"
    t.string    "mobile"
    t.string    "telephone"
    t.string    "fax"
    t.string    "email_address"
    t.string    "tin"
    t.string    "vat_exemption"
    t.text      "inquiry"
    t.timestamp "created_at",     :null => false
    t.timestamp "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string    "email",                                 :default => "", :null => false
    t.string    "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",                         :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at",                                            :null => false
    t.timestamp "updated_at",                                            :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
