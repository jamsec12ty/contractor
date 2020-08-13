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

ActiveRecord::Schema.define(version: 2020_08_10_141848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "incidents", force: :cascade do |t|
    t.datetime "date"
    t.string "location"
    t.string "incident_type"
    t.string "incident_details"
    t.string "poi_details"
    t.string "witness_details"
    t.string "reported_to"
    t.string "reported_by"
    t.string "follow_up_actions"
    t.integer "venue_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incidents_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "incident_id"
  end

  create_table "incidents_venues", force: :cascade do |t|
    t.integer "venue_id"
    t.integer "incident_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.date "dob"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "emergency_contact_name"
    t.string "emergency_contact_phone"
    t.string "driver_lic_no"
    t.boolean "driver_lic_current"
    t.string "sec_lic_no"
    t.date "sec_lic_exp"
    t.string "rsa_no"
    t.date "rsa_exp"
    t.date "first_aid_exp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "password_digest"
  end

  create_table "users_venues", force: :cascade do |t|
    t.integer "user_id"
    t.integer "venue_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "licensee_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
