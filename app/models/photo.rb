class Photo < ActiveRecord::Base
  belongs_to :album
  has_attachment
end
