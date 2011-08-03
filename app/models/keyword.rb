class Keyword < ActiveRecord::Base
  has_many :tags,  :foreign_key => "keyword_id",
                            :dependent => :destroy
  has_many :photos, :through => :tags, :source => :keyword
end
