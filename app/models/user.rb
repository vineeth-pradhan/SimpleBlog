class User < ActiveRecord::Base
  belongs_to :resource, :polymorphic => true
  
  def is_admin?
    self.is_admin
  end
end
