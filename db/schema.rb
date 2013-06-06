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

ActiveRecord::Schema.define(:version => 20130606213707) do

  create_table "stocks", :force => true do |t|
    t.string   "symbol"
    t.string   "pretty_symbol"
    t.string   "symbol_lookup_url"
    t.string   "company"
    t.string   "exchange"
    t.string   "exchange_timezone"
    t.string   "exchange_utc_offset"
    t.string   "exchange_closing"
    t.string   "divisor"
    t.string   "currency"
    t.string   "last"
    t.string   "high"
    t.string   "low"
    t.string   "volume"
    t.string   "avg_volume"
    t.string   "market_cap"
    t.string   "open"
    t.string   "y_close"
    t.string   "change"
    t.string   "perc_change"
    t.string   "delay"
    t.string   "trade_timestamp"
    t.string   "trade_date_utc"
    t.string   "trade_time_utc"
    t.string   "current_date_utc"
    t.string   "current_time_utc"
    t.string   "symbol_url"
    t.string   "chart_url"
    t.string   "disclaimer_url"
    t.string   "ecn_url"
    t.string   "isld_last"
    t.string   "isld_trade_date_utc"
    t.string   "isld_trade_time_utc"
    t.string   "brut_last"
    t.string   "brut_trade_date_utc"
    t.string   "brut_trade_time_utc"
    t.string   "daylight_savings"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "user_stocks", :force => true do |t|
    t.integer  "user_id"
    t.integer  "stock_id"
    t.string   "symbol"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
