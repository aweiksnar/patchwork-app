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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130507155626) do

  create_table "articles", :force => true do |t|
    t.string  "article_title"
    t.string  "url"
    t.boolean "bookmark"
    t.text    "what_description"
    t.text    "why_description"
    t.integer "subtopic_id"
    t.integer "level"
  end

  create_table "categories", :force => true do |t|
    t.string "category_title"
  end

  create_table "subtopics", :force => true do |t|
    t.string  "subtopic_title"
    t.integer "topic_id"
  end

  create_table "topics", :force => true do |t|
    t.string  "topic_title"
    t.integer "category_id"
  end

end
