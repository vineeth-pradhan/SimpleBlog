class CategoriesController < CustomisedCrudController

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
    @records = Category.find(params[:id]).blog_posts
    render :layout => 'application', :text => "No posts under this Category" if @records == []
  end

  def update
    super
  end

  def edit
    super
  end

  def destroy
    super
  end

  def set_properties
    @model_class = "Category"
  end
end
