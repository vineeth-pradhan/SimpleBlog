class BlogPostsController < CustomisedCrudController

  before_filter :set_properties
  before_filter :login_required
  def index
    super
  end
  
  def new
    super
  end

  def create
    super
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
