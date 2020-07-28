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

ActiveRecord::Schema.define(version: 2020_07_28_155516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lost_pets", force: :cascade do |t|
    t.string "pet_type"
    t.string "location"
    t.string "img_url"
  end

  create_table "pets", force: :cascade do |t|
    t.string "pet_type"
    t.string "breed"
    t.integer "age"
    t.string "sex"
    t.string "country"
    t.string "city"
    t.integer "zip"
    t.string "img_url"
    t.boolean "adopted"
    t.boolean "fostered"
    t.boolean "can_adopt?"
    t.boolean "can_foster?"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "bio"
    t.string "email"
    t.string "pet_preference"
    t.boolean "foster?"
    t.boolean "adopt?"
    t.integer "age"
    t.string "img_url"
    t.string "country"
    t.string "city"
    t.integer "zip"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
