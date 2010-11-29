require 'FasterCSV'

def load_user
puts 'Loading users...'
FasterCSV.foreach("#{RAILS_ROOT}/lib/csv/load_user.csv") { |row|
User.create!(:id=>row[0], :username=>row[1],:password=>row[2],:first_name=>row[3], \
    :last_name=>row[4], :email=>row[5], :is_admin => row[5])
}
end

def load_blog_post
puts 'Loading blog_posts...'
FasterCSV.foreach("#{RAILS_ROOT}/lib/csv/load_blog_posts.csv") {|row|
BlogPost.create!(:id=>row[0],  :title=>row[1], :body=>row[2], :author_id=>row[3])
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
  db=establish_connection
  puts 'Loading blog_posts_categories'
  FasterCSV.foreach("#{RAILS_ROOT}/lib/csv/load_blog_posts_categories.csv") {|row|
    db.execute("INSERT INTO blog_posts_categories(blog_post_id,category_id)\
 VALUES(#{row[0]},#{row[1]});")
  }
end

def load_blog_posts_tags
  db=establish_connection
  puts 'Loading blog_post_tags'
  FasterCSV.foreach("#{RAILS_ROOT}/lib/csv/load_blog_posts_tags.csv") {|row|
    db.execute("INSERT INTO blog_posts_tags(blog_post_id,tag_id)\
 VALUES(#{row[0]},#{row[1]});")
  }
end

private #=======================================

def establish_connection
  @db ||= ActiveRecord::Base.connection
end