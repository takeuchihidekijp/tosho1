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

ActiveRecord::Schema.define(version: 20160702103008) do

  create_table "doc_refs", force: :cascade do |t|
    t.integer  "doc_id"
    t.string   "from"
    t.string   "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "doc_refs", ["doc_id"], name: "index_doc_refs_on_doc_id"

  create_table "docs", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_categories", force: :cascade do |t|
    t.integer  "anc_id"
    t.integer  "des_id"
    t.integer  "depth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "group_categories", ["anc_id", "des_id"], name: "index_group_categories_on_anc_id_and_des_id", unique: true
  add_index "group_categories", ["anc_id"], name: "index_group_categories_on_anc_id"
  add_index "group_categories", ["des_id"], name: "index_group_categories_on_des_id"

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_groups", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_groups", ["group_id"], name: "index_user_groups_on_group_id"
  add_index "user_groups", ["user_id"], name: "index_user_groups_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
