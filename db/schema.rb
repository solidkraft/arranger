# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_26_134317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "accounts", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.uuid "organization_id", null: false
    t.index ["organization_id"], name: "index_accounts_on_organization_id"
  end

  create_table "calendar_event_types", id: false, force: :cascade do |t|
    t.uuid "calendar_id", null: false
    t.uuid "event_type_id", null: false
    t.index ["calendar_id"], name: "index_calendar_event_types_on_calendar_id"
    t.index ["event_type_id"], name: "index_calendar_event_types_on_event_type_id"
  end

  create_table "calendars", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "account_id", null: false
    t.index ["account_id"], name: "index_calendars_on_account_id"
  end

  create_table "event_types", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.jsonb "type", default: {}, null: false
    t.uuid "organization_id", null: false
    t.index ["organization_id"], name: "index_event_types_on_organization_id"
    t.index ["type"], name: "index_event_types_on_type", using: :gin
  end

  create_table "organizations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.jsonb "info", default: {}, null: false
    t.jsonb "location", default: {}, null: false
    t.index ["location"], name: "index_organizations_on_location", using: :gin
  end

  add_foreign_key "accounts", "organizations"
  add_foreign_key "calendars", "accounts"
  add_foreign_key "event_types", "organizations"
end
