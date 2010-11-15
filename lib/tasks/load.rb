require 'FasterCSV'

def load_user
puts 'Loading users...'
FasterCSV.foreach("#{RAILS_ROOT}/lib/csv/load_user.csv") { |row|
User.create!(:id=>row[0], :username=>row[1],:password=>row[2],:first_name=>row[3], \
    :last_name=>row[4], :email=>row[5])
}
end

def load_blog_post
puts 'Loading blog_posts...'
FasterCSV.foreach("#{RAILS_ROOT}/lib/csv/load_blog_posts.csv") {|row|
User.create!(:id=>row[0], :title=>row[1], :body=>row[2], :user_id=>row[3])
}
end

def load_categories
puts 'Loading categories'
  FasterCSV.foreach("#{RAILS_ROOT}/lib/csv/load_categories.csv") { |row|
  Category.create!(:id=>row[0], :title=>row[1], :description=>row[2])
}
end

def load_tags
puts 'Loading tags'
  FasterCSV.foreach("#{RAILS_ROOT}/lib/csv/load_categories.csv") { |row|
  Category.create!(:id=>row[0], :title=>row[1], :description=>row[2])
  }
end

def load_comments
  puts 'Loading comments'
  FasterCSV.foreach("#{RAILS_ROOT}/lib/csv/load_comments.csv") { |row|
    Comment.create!(:id=>row[0], :content=>row[1], :blog_post_id=>row[2])
  }
end

def load_blog_posts_categories
  db=ActiveRecord::Base.connection
  sql=db.execute("INSERT INTO blog_posts_categories VALUES()")
  
end