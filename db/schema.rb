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

ActiveRecord::Schema.define(version: 20151129063411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shop_images", force: true do |t|
    t.integer  "shop_id",            null: false
    t.string   "image_file_name",    null: false
    t.string   "image_content_type", null: false
    t.integer  "image_file_size",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", id: false, force: true do |t|
    t.integer  "id",                          null: false
    t.text     "name",                        null: false
    t.string   "address",                     null: false
    t.text     "description",                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_deleted",  default: false, null: false
  end

end
