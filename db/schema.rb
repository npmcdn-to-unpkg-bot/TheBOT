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

ActiveRecord::Schema.define(version: 20160329200252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "type"
    t.string   "tweet_id"
    t.string   "tweet_url"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.datetime "published_at"
    t.string   "politype"
    t.string   "socialtype"
    t.string   "newstype"
    t.string   "filmtype"
  end

  create_table "films", force: :cascade do |t|
    t.string   "tweet_id"
    t.string   "tweet_url"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "published_at"
    t.string   "filmtype"
  end

  create_table "musics", force: :cascade do |t|
    t.string   "tweet_id"
    t.string   "tweet_url"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "published_at"
  end

  create_table "newstweets", force: :cascade do |t|
    t.string   "tweet_id"
    t.string   "tweet_url"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "published_at"
    t.string   "newstype"
  end

  create_table "politics", force: :cascade do |t|
    t.string   "tweet_id"
    t.string   "tweet_url"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "published_at"
    t.string   "politype"
  end

  create_table "socialjustices", force: :cascade do |t|
    t.string   "tweet_id"
    t.string   "tweet_url"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "published_at"
    t.string   "socialtype"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "uid"
    t.string   "provider"
    t.string   "avatar_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "token"
    t.string   "secret"
  end

end
