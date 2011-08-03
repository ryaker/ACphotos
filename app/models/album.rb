class Album < ActiveRecord::Base
  attr_accessible :folder_id, :photo_id
    
  belongs_to :folder
  belongs_to :photo
  
  has_many  :photos
  
  validates :folder_id, :presence => true
  validates :photo_id, :presence => true

end
