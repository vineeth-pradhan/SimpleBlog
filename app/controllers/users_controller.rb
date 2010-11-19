class UsersController < CustomisedCrudController
  
  before_filter :set_properties
  before_filter :login_required
  before_filter :admin_required

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
  
  def update_admin_privilege
     old_admin_users=User.find_all_by_is_admin(true).collect(&:id)
     if new_admin_users=params[:user_ids]
      unchecked_admin_users = old_admin_users - new_admin_users
     end
     User.update_all(["updated_at=?,is_admin=?",Time.now,false], :id=>unchecked_admin_users)
     User.update_all(["updated_at=?,is_admin=?", Time.now,true], :id=>params[:user_ids])
     flash[:alert]="There should be atleast one admin" if not params[:user_ids]
     redirect_to users_path
  end

  def set_properties
    @model_class = "User"
    @params_name = "user"
  end

end
