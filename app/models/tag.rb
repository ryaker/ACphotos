class Tag < ActiveRecord::Base
  set_table_name 'keyword_photo'
  attr_accessible :keyword_id, :photo_id
    

  belongs_to :photo
  
  belongs_to :keyword
  
  has_many :keywords
  
  validates :keyword_id, :presence => true
  validates :photo_id, :presence => true
end
