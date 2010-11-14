class BlogPostsController < CustomisedCrudController

  before_filter :set_properties
  before_filter :login_required
  
  def new
    super
  end

  def create
    @record = BlogPost.new(params[:blog_post])
    if @record.save!
       flash[:notice] = "Record Created!"
       redirect_to :action => "index" #TODO: Try this -> render index
    else
      flash[:error] = "New record creation failed"
       redirect_to :action => "new"
    end
  end

  def show
    super
  end

  def edit
    super
  end

  def update
    super
  end

  def destroy
    super
  end

  def set_properties
    @model_class = "BlogPost"
    @params_name = "blog_post"
  end

end
