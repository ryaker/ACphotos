class PrintProduct < ActiveRecord::Base
  set_table_name 'photo_print_product'
  belongs_to :photo
end
