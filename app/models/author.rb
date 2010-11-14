class Author < ActiveRecord::Base
  has_one :user, :as => :resource
  has_many :blog_posts
end
