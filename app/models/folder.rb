class Folder < ActiveRecord::Base
  
  has_many :albums
  has_many :photos, :through => :albums, :source => :photo
  
end
