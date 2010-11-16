# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101003222115) do

  create_table "authors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_posts", :force => true do |t|
    t.string   "title",      :limit => 60, :null => false
    t.text     "body"
    t.integer  "author_id"
    t.integer  "editor_id"
    t.integer  "comment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blog_posts_categories", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "blog_post_id"
  end

  create_table "blog_posts_editors", :id => false, :force => true do |t|
    t.integer "blog_post_id"
    t.integer "editor_id"
  end

  create_table "blog_posts_tags", :id => false, :force => true do |t|
    t.integer "blog_post_id"
    t.integer "tag_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "title",       :limit => 50, :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.text     "content",      :null => false
    t.integer  "user_id"
    t.integer  "blog_post_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "editors", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "title",       :limit => 50
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",      :limit => 100,                    :null => false
    t.string   "password",      :limit => 100,                    :null => false
    t.string   "first_name",    :limit => 100
    t.string   "last_name",     :limit => 100
    t.string   "email",                                           :null => false
    t.integer  "comment_id"
    t.integer  "author_id"
    t.integer  "editor_id"
    t.boolean  "is_admin",                     :default => false, :null => false
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
