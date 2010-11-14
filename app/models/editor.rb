class Editor < ActiveRecord::Base
  has_one :user, :as => :resource
  has_and_belongs_to_many :blog_posts
end
