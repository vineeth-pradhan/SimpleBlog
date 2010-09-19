class BlogPostsController < ApplicationController
  def index
    
    @blog_posts = BlogPost.all
    
  end

  def new
    
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.new(params[:blog_post])
    if @blog_post.save!
       flash[:notice] = "Record Created!"
       redirect_to :action => "index" #TODO: Try this -> render index
    else
      flash[:error] = "New blog post creation failed"
       redirect_to :action => "new"
    end
  end

  def show
    
    @blog_post = BlogPost.find(params[:id]) 
  end

  def update
    @blog_post = BlogPost.find(params[:id])
    if @blog_post.update_attributes!(params[:blog_post])
      flash[:notice] = "Record updated"
      render :action => "show", :id => @blog_post.id
    else
      flash[:error] = "Record could not be updated"
      redirect_to :back
    end
  end

  def edit
    #TODO: Get information as to how the fields from the database tables are populated when in edit mode
    @blog_post = BlogPost.find(params[:id])
  end

  def destroy
    @blog_post = BlogPost.find(params[:id])

    if @blog_post != nil
      flash[:notice] = "Record deleted!"
      @blog_post.destroy
      redirect_to :back
    else
      flash[:error] = "Failed to delete this record"
      redirect_to :back
    end
  end

end
