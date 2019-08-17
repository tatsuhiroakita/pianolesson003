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

ActiveRecord::Schema.define(version: 2019_07_27_075517) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fee_howtos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lesson_styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "level_kakuteis", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "level_kibous", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pinano_histories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pinano_owneds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "kanji_name"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "email2"
    t.integer "age"
    t.string "address"
    t.string "zip_code"
    t.string "mobile_phone"
    t.string "emagency_phone"
    t.string "emagency_zokugara"
    t.string "emagency_name"
    t.string "emagency_kana"
    t.string "name_kana"
    t.integer "lesson_kaisu"
    t.integer "lesson_nobekaisu"
    t.date "join_date"
    t.bigint "lesson_styles_id"
    t.bigint "fee_howtos_id"
    t.bigint "level_kibous_id"
    t.bigint "level_kakuteis_id"
    t.bigint "pinano_histories_id"
    t.bigint "pinano_owned_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["fee_howtos_id"], name: "index_users_on_fee_howtos_id"
    t.index ["lesson_styles_id"], name: "index_users_on_lesson_styles_id"
    t.index ["level_kakuteis_id"], name: "index_users_on_level_kakuteis_id"
    t.index ["level_kibous_id"], name: "index_users_on_level_kibous_id"
    t.index ["pinano_histories_id"], name: "index_users_on_pinano_histories_id"
    t.index ["pinano_owned_id"], name: "index_users_on_pinano_owned_id"
  end

  add_foreign_key "users", "fee_howtos", column: "fee_howtos_id"
  add_foreign_key "users", "lesson_styles", column: "lesson_styles_id"
  add_foreign_key "users", "level_kakuteis", column: "level_kakuteis_id"
  add_foreign_key "users", "level_kibous", column: "level_kibous_id"
  add_foreign_key "users", "pinano_histories", column: "pinano_histories_id"
  add_foreign_key "users", "pinano_owneds"
end
