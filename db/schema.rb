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

ActiveRecord::Schema.define(version: 20160706112114) do

  create_table "api_logs", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doc_categories", force: :cascade do |t|
    t.integer  "org_id"
    t.string   "name"
    t.integer  "created_user_id"
    t.integer  "updated_user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "doc_categories", ["created_user_id"], name: "index_doc_categories_on_created_user_id"
  add_index "doc_categories", ["org_id"], name: "index_doc_categories_on_org_id"
  add_index "doc_categories", ["updated_user_id"], name: "index_doc_categories_on_updated_user_id"

  create_table "doc_refs", force: :cascade do |t|
    t.integer  "doc_id"
    t.integer  "user_id"
    t.integer  "page_num"
    t.string   "from"
    t.string   "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "doc_refs", ["doc_id"], name: "index_doc_refs_on_doc_id"
  add_index "doc_refs", ["user_id"], name: "index_doc_refs_on_user_id"

  create_table "docs", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "doc_ref_id"
    t.integer  "doc_category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "docs", ["doc_category_id"], name: "index_docs_on_doc_category_id"
  add_index "docs", ["doc_ref_id"], name: "index_docs_on_doc_ref_id"

  create_table "orgs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "org_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["org_id"], name: "index_users_on_org_id"

end
