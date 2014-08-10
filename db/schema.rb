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

ActiveRecord::Schema.define(version: 20140810055711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",              default: "", null: false
    t.string   "encrypted_password", default: "", null: false
    t.integer  "sign_in_count",      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree

  create_table "article_authors", force: true do |t|
    t.string   "fullname",   null: false
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "article_authors", ["fullname"], name: "index_article_authors_on_fullname", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["name"], name: "index_categories_on_name", unique: true, using: :btree

  create_table "post_images", force: true do |t|
    t.integer  "post_id",                null: false
    t.string   "post_image",             null: false
    t.integer  "priority",   default: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_images", ["post_id"], name: "index_post_images_on_post_id", using: :btree
  add_index "post_images", ["priority", "post_id"], name: "index_post_images_on_priority_and_post_id", unique: true, using: :btree
  add_index "post_images", ["priority"], name: "index_post_images_on_priority", using: :btree

  create_table "post_publications", force: true do |t|
    t.string   "name",        null: false
    t.string   "company_url", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_publications", ["name"], name: "index_post_publications_on_name", unique: true, using: :btree

  create_table "post_types", force: true do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_types", ["name"], name: "index_post_types_on_name", unique: true, using: :btree

  create_table "posts", force: true do |t|
    t.integer  "post_type_id",        default: 1,     null: false
    t.integer  "category_id",                         null: false
    t.string   "title",                               null: false
    t.text     "body",                                null: false
    t.integer  "site_author_id",      default: 1,     null: false
    t.boolean  "publish_ind",         default: false
    t.text     "video_url"
    t.integer  "article_author_id",                   null: false
    t.integer  "post_publication_id",                 null: false
    t.text     "article_title",                       null: false
    t.text     "article_url",                         null: false
    t.string   "slug",                                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["article_author_id"], name: "index_posts_on_article_author_id", using: :btree
  add_index "posts", ["category_id"], name: "index_posts_on_category_id", using: :btree
  add_index "posts", ["post_publication_id"], name: "index_posts_on_post_publication_id", using: :btree
  add_index "posts", ["post_type_id"], name: "index_posts_on_post_type_id", using: :btree
  add_index "posts", ["site_author_id"], name: "index_posts_on_site_author_id", using: :btree
  add_index "posts", ["slug"], name: "index_posts_on_slug", unique: true, using: :btree
  add_index "posts", ["title"], name: "index_posts_on_title", using: :btree

  create_table "site_authors", force: true do |t|
    t.string   "fullname",                 null: false
    t.string   "naw_email",                null: false
    t.string   "personal_email",           null: false
    t.integer  "personal_phone", limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "site_authors", ["fullname"], name: "index_site_authors_on_fullname", using: :btree
  add_index "site_authors", ["naw_email"], name: "index_site_authors_on_naw_email", using: :btree

end
