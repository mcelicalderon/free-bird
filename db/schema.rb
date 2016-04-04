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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160404035331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "census_dates", force: :cascade do |t|
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "day_descriptions", force: :cascade do |t|
    t.string   "temperature"
    t.text     "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.time     "start_time"
    t.integer  "census_date_id"
  end

  add_index "day_descriptions", ["census_date_id"], name: "index_day_descriptions_on_census_date_id", using: :btree

  create_table "families", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genera", force: :cascade do |t|
    t.string   "name"
    t.integer  "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "genera", ["family_id"], name: "index_genera_on_family_id", using: :btree

  create_table "periods", force: :cascade do |t|
    t.integer  "start",      null: false
    t.integer  "end",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "segment_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "segments", force: :cascade do |t|
    t.string   "name"
    t.integer  "segment_type_id"
    t.integer  "zone_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "segments", ["segment_type_id"], name: "index_segments_on_segment_type_id", using: :btree
  add_index "segments", ["zone_id"], name: "index_segments_on_zone_id", using: :btree

  create_table "species", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "genus_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "species", ["genus_id"], name: "index_species_on_genus_id", using: :btree

  create_table "species_records", force: :cascade do |t|
    t.integer  "count"
    t.integer  "day_description_id"
    t.integer  "period_id"
    t.integer  "segment_id"
    t.integer  "species_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "species_records", ["day_description_id"], name: "index_species_records_on_day_description_id", using: :btree
  add_index "species_records", ["period_id"], name: "index_species_records_on_period_id", using: :btree
  add_index "species_records", ["segment_id"], name: "index_species_records_on_segment_id", using: :btree
  add_index "species_records", ["species_id"], name: "index_species_records_on_species_id", using: :btree

  create_table "zones", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "day_descriptions", "census_dates", on_delete: :cascade
  add_foreign_key "genera", "families", on_delete: :cascade
  add_foreign_key "segments", "segment_types", on_delete: :cascade
  add_foreign_key "segments", "zones", on_delete: :cascade
  add_foreign_key "species", "genera", on_delete: :cascade
  add_foreign_key "species_records", "day_descriptions"
  add_foreign_key "species_records", "periods"
  add_foreign_key "species_records", "segments"
  add_foreign_key "species_records", "species"
end
