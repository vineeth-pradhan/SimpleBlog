class User < ActiveRecord::Base
  belongs_to :resource, :polymorphic => true
end
