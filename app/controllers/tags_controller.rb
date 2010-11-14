class TagsController < CustomisedCrudController
  before_filter :set_properties
  before_filter :login_required
  
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
    @model_class = "Tag"
  end

end
