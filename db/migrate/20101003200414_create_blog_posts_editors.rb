class CreateBlogPostsEditors < ActiveRecord::Migration
  def self.up
    create_table :blog_posts_editors, {:id => false} do |t|
      #TODO: make the editor and blogs_posts id as not  null
      t.integer :blog_post_id
      t.integer :editor_id
    end
  end

  def self.down
    drop_table :blog_posts_editors
  end
end
