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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170218200729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.string   "event_city"
    t.string   "event_country"
    t.string   "event_location"
    t.integer  "event_total_cost"
    t.string   "event_url"
    t.string   "event_tracking_url"
    t.integer  "event_sponsorship_cost"
    t.integer  "event_physical_goods_cost"
    t.integer  "event_travel_cost"
    t.integer  "event_impact_score"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "physical_goods", force: :cascade do |t|
    t.integer  "tshirt_count"
    t.decimal  "tshirt_cost"
    t.integer  "tshirts_distributed"
    t.decimal  "stickers_cost"
    t.string   "other_goods"
    t.decimal  "other_goods_cost"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "sponsorships", force: :cascade do |t|
    t.decimal  "direct_cost"
    t.string   "level_label"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "travels", force: :cascade do |t|
    t.string   "hotel_name"
    t.decimal  "hotel_cost_per_night"
    t.decimal  "hotel_cost_total"
    t.decimal  "airfare_cost_total"
    t.decimal  "other_expenses_total"
    t.decimal  "total_travel_cost"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
