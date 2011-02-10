class Album < ActiveRecord::Base
  belongs_to :blog_post
  has_many :photos
end
