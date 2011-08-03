class Photo < ActiveRecord::Base
  
  has_many :albums,  :foreign_key => "photo_id",
                            :dependent => :destroy
  has_many :tags
  has_many :folders, :through => :albums, :source => :photo
  has_many :keywords, :through => :tags, :source => :keyword
  has_many :print_products
end
