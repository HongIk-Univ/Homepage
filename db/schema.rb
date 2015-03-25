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

ActiveRecord::Schema.define(version: 20150325024255) do

  create_table "board_sub_types", force: true do |t|
    t.string   "board_type_id"
    t.string   "title"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "board_types", force: true do |t|
    t.string   "title"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boards", force: true do |t|
    t.string   "member_id"
    t.string   "writer"
    t.string   "board_type_id"
    t.integer  "board_sub_type_id"
    t.datetime "date"
    t.string   "title"
    t.text     "text"
    t.integer  "read_count",        default: 0
    t.integer  "comment_count"
    t.integer  "down_count"
    t.integer  "like_count"
    t.string   "attachment"
    t.string   "img_cover"
    t.string   "img_thumbnail"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_types", force: true do |t|
    t.string   "name"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "pkid"
    t.string   "device_token"
    t.string   "password"
    t.string   "lost_password"
    t.string   "profile_img"
    t.string   "name"
    t.string   "email"
    t.string   "mobile"
    t.date     "birth"
    t.integer  "member_type_id"
    t.integer  "level"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
