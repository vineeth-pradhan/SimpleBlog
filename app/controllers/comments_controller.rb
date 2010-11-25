class CommentsController < CustomisedCrudController
  
  before_filter :set_properties
  before_filter :login_required

  def index
    super
  end
  
  def new
    @blog_post=BlogPost.find(params[:blog_post_id])
    @comment = @blog_post.comments.build
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    #TODO: make the user_id not to be null, after creation of users and authentication
    @record = BlogPost.find(params[:blog_post_id])
    @comment = @record.comments.new(:content=>params[:content])
    @comment.user=User.find(params[:user_id])
    if(@comment.save!)
      flash[:notice]="Comment successfully posted"
      respond_to do |format|
        #format.html {redirect_to @blog_post, :notice => "New comment added"}
        format.js
      end
    else
      respond_to do |format|
        flash[:error] = "New comment could not be created"
        format.html {render blog_posts}
        format.js
      end
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
    @model_class = "Comment"
  end

end
