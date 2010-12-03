class User < ActiveRecord::Base
  belongs_to :resource, :polymorphic => true
  
  validates_length_of :username, :is => 5
  
  attr_accessible :first_name, :last_name
  def is_admin?
    self.is_admin
  end
end
