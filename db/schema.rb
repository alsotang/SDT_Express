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

ActiveRecord::Schema.define(:version => 20130512043019) do

  create_table "drivers", :force => true do |t|
    t.string   "name"
    t.integer  "vehicle_type"
    t.string   "current_loc"
    t.boolean  "vehicle_status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "news_items", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "order_histories", :force => true do |t|
    t.string   "where_is"
    t.datetime "time_point"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders", :force => true do |t|
    t.string   "start_loc"
    t.string   "end_loc"
    t.integer  "price"
    t.boolean  "is_done"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orders_users", :id => false, :force => true do |t|
    t.integer "order_id"
    t.integer "user_id"
  end

  add_index "orders_users", ["order_id", "user_id"], :name => "index_orders_users_on_order_id_and_user_id"
  add_index "orders_users", ["user_id", "order_id"], :name => "index_orders_users_on_user_id_and_order_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "true_name"
    t.string   "telephone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
