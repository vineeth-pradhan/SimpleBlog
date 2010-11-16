require File.join(File.dirname(__FILE__),'load.rb')

namespace :create do
  desc "Creates new user, with porsamini as login, creates one user currently"
  task :user => :environment do
    load_user
  end

  desc "Creates sample categories"
  task :categories => :environment do
    load_categories
  end

  desc "Creates sample tags"
  task :tags => :environment do
    load_tags
  end

  desc "Creates sample blog_post"
    task :blog_post => :environment do
      load_blog_post
    end


  desc "Creates sample comments"
  task :comments => :environment do
    load_comments
  end

  desc "Creates link between blog_posts and categories table"
  task :blog_posts_categories => :environment do
    load_blog_posts_categories
  end

  desc "Creates link between blog_posts and tags"
  task :blog_posts_tags => :environment do
    load_blog_posts_tags
  end

  desc "Creates user, categories, tags, blog_posts, comments"
  task :all => [:user,:categories,:tags,:blog_post,:comments,\
      :blog_posts_categories,:blog_posts_tags] do
  end
end