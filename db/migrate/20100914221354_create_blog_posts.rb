class CreateBlogPosts < ActiveRecord::Migration
  def self.up
    create_table :blog_posts do |t|
      t.string :title, :limit => 60, :null => false
      t.text :body, :default => ""
      t.references :author
      t.references :editor
      t.references :comment
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :blog_posts
  end
end
