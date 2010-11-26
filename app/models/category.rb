class Category < ActiveRecord::Base
  has_and_belongs_to_many :blog_posts, :join_table => 'blog_posts_categories'
end
