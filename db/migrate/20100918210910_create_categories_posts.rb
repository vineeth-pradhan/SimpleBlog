class CreateCategoriesPosts < ActiveRecord::Migration
  def self.up
    create_table :blog_posts_categories, {:id => false} do |t|

      t.references :category
      t.references :blog_post

    end
  end

  def self.down
    drop_table :blog_posts_categories
  end
end
