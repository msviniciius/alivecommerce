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

ActiveRecord::Schema.define(version: 2021_11_24_201447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "phone_arquivos", force: :cascade do |t|
    t.string "mes"
    t.string "ano"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "model"
    t.string "brand"
    t.string "manufacturer"
    t.string "chip_type"
    t.string "so_version"
    t.string "screen_type"
    t.string "display_size"
    t.string "resolution"
    t.string "back_cam"
    t.string "front_cam"
    t.string "ram"
    t.string "processor"
    t.string "memory_int"
    t.string "color"
    t.string "modaly"
    t.integer "quantity"
    t.decimal "price"
    t.bigint "phone_arquivos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone_arquivos_id"], name: "index_phones_on_phone_arquivos_id"
  end

  add_foreign_key "phones", "phone_arquivos", column: "phone_arquivos_id"
end
