# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 0) do

  create_table "color_type", :id => false, :force => true do |t|
    t.integer "id",                                     :null => false
    t.string  "color_type",             :default => "", :null => false
    t.string  "color_type_description"
  end

  add_index "color_type", ["id"], :name => "id"

  create_table "edition", :id => false, :force => true do |t|
    t.integer "id",                                          :null => false
    t.integer "photo_id",                    :default => 0,  :null => false
    t.string  "edition",       :limit => 25, :default => "", :null => false
    t.string  "limited",       :limit => 1,  :default => "", :null => false
    t.integer "level_type_id",               :default => 0,  :null => false
    t.integer "total_prints",                :default => 0
    t.integer "next_print"
  end

  add_index "edition", ["id"], :name => "id"

  create_table "exif", :id => false, :force => true do |t|
    t.integer "id",                                      :null => false
    t.integer "photo_id",                 :default => 0, :null => false
    t.string  "Make"
    t.string  "Model"
    t.string  "Orientation"
    t.string  "xResolution"
    t.string  "yResolution"
    t.string  "ResolutionUnit"
    t.string  "Software"
    t.string  "DateTime"
    t.string  "YCbCrPositioning"
    t.string  "ExifOffset"
    t.string  "ExposureTime"
    t.string  "FNumber"
    t.string  "ExifVersion"
    t.string  "DateTimeOriginal"
    t.string  "DateTimedigitized"
    t.string  "ComponentsConfiguration"
    t.string  "CompressedBitsPerPixel"
    t.string  "ShutterSpeedValue"
    t.string  "ApertureValue"
    t.string  "ExposureBiasValue"
    t.string  "MaxApertureValue"
    t.string  "MeteringMode"
    t.string  "Flash"
    t.string  "FocalLength"
    t.string  "KnownMaker"
    t.string  "UserCommentOld"
    t.string  "FlashPixVersion"
    t.string  "ColorSpace"
    t.string  "ExifImageWidth"
    t.string  "ExifImageHeight"
    t.string  "FocalPlaneXResolution"
    t.string  "FocalPlaneYResolution"
    t.string  "FocalPlaneResolutionUnit"
    t.string  "SensingMethod"
    t.string  "FileSource"
    t.string  "CustomerRender"
    t.string  "ExposureMode"
    t.string  "WhiteBalance"
    t.string  "DigitalZoomRatio"
    t.string  "SceneCaptureMode"
  end

  add_index "exif", ["id"], :name => "id"
  add_index "exif", ["photo_id"], :name => "photo_id"

  create_table "fineart_print_available", :id => false, :force => true do |t|
    t.integer "photo_id", :default => 0, :null => false
  end

  add_index "fineart_print_available", ["photo_id"], :name => "photo_id"

  create_table "folder_photo", :force => true do |t|
    t.integer "folder_id", :default => 0, :null => false
    t.integer "photo_id",  :default => 0, :null => false
    t.integer "order_id"
  end

  add_index "folder_photo", ["folder_id", "photo_id"], :name => "folder_id"
  add_index "folder_photo", ["photo_id"], :name => "photo_id"

  create_table "folders", :force => true do |t|
    t.string "folders_name",        :default => "", :null => false
    t.string "folders_description"
    t.string "parent_url"
  end

  create_table "keyword_photo", :id => false, :force => true do |t|
    t.integer  "photo_id",    :default => 0, :null => false
    t.integer  "keyword_id",  :default => 0, :null => false
    t.datetime "create_date",                :null => false
  end

  add_index "keyword_photo", ["keyword_id"], :name => "keyword_photo_ibfk_1"
  add_index "keyword_photo", ["photo_id", "keyword_id"], :name => "photo_id"

  create_table "keywords", :force => true do |t|
    t.string "keyword",             :default => "", :null => false
    t.string "keyword_description"
  end

  create_table "level_type", :id => false, :force => true do |t|
    t.integer "level_type_id",                   :null => false
    t.integer "photo_level_id", :default => 0,   :null => false
    t.integer "photo_type_id",  :default => 0,   :null => false
    t.float   "price",          :default => 0.0, :null => false
  end

  add_index "level_type", ["level_type_id"], :name => "level_type_id"

  create_table "links", :primary_key => "link_id", :force => true do |t|
    t.string   "site_name"
    t.string   "url",         :default => "", :null => false
    t.datetime "create_date",                 :null => false
  end

  create_table "paper_type", :primary_key => "paper_type_id", :force => true do |t|
    t.string   "paper_type_name",                     :default => "",  :null => false
    t.string   "paper_type_description"
    t.string   "fineart",                :limit => 1, :default => "N", :null => false
    t.datetime "create_date",                                          :null => false
  end

  add_index "paper_type", ["paper_type_id"], :name => "paper_type_id", :unique => true

  create_table "photo_color_type", :id => false, :force => true do |t|
    t.integer "photo_id",      :default => 0, :null => false
    t.integer "color_type_id", :default => 0, :null => false
  end

  add_index "photo_color_type", ["photo_id", "color_type_id"], :name => "photo_id"

  create_table "photo_level", :id => false, :force => true do |t|
    t.integer "photo_level_id",                         :default => 0, :null => false
    t.string  "photo_level_description", :limit => 250
  end

  create_table "photo_print_available", :id => false, :force => true do |t|
    t.integer "photo_id", :default => 0, :null => false
  end

  add_index "photo_print_available", ["photo_id"], :name => "photo_id"

  create_table "photo_print_product", :primary_key => "photo_print_product_id", :force => true do |t|
    t.integer  "photo_id",                       :default => 0,   :null => false
    t.integer  "paper_type_id",                  :default => 0,   :null => false
    t.integer  "width",                          :default => 0,   :null => false
    t.integer  "height",                         :default => 0,   :null => false
    t.string   "matted",            :limit => 1, :default => "N", :null => false
    t.string   "framed",            :limit => 1, :default => "N", :null => false
    t.float    "price"
    t.string   "print_description"
    t.datetime "create_date",                                     :null => false
  end

  add_index "photo_print_product", ["photo_id"], :name => "photo_id"
  add_index "photo_print_product", ["photo_print_product_id"], :name => "photo_print_product_id", :unique => true

  create_table "photo_rating", :id => false, :force => true do |t|
    t.integer  "photo_id",    :default => 0, :null => false
    t.integer  "rating",      :default => 0, :null => false
    t.datetime "create_date",                :null => false
  end

  add_index "photo_rating", ["photo_id"], :name => "photo_id"

  create_table "photo_view", :id => false, :force => true do |t|
    t.integer "photo_id",   :default => 0, :null => false
    t.integer "view_count", :default => 0, :null => false
  end

  add_index "photo_view", ["photo_id"], :name => "photo_id"

  create_table "photos", :force => true do |t|
    t.string   "photo_name",       :limit => 250
    t.string   "image_path",       :limit => 250, :default => "", :null => false
    t.string   "thumbnail_path",   :limit => 250, :default => "", :null => false
    t.string   "size",             :limit => 250
    t.string   "dimensions",       :limit => 250
    t.integer  "primary_color_id"
    t.string   "photo_credit",                    :default => "", :null => false
    t.text     "photo_keywords"
    t.datetime "create_date",                                     :null => false
  end

  create_table "primary_color", :primary_key => "primary_color_id", :force => true do |t|
    t.string "color_name", :default => "", :null => false
  end

  create_table "product_type", :primary_key => "product_type_id", :force => true do |t|
    t.string "product_type_name",        :default => "", :null => false
    t.string "product_type_description", :default => "", :null => false
  end

  create_table "products", :primary_key => "product_id", :force => true do |t|
    t.integer "photo_id",            :default => 0,  :null => false
    t.integer "product_type_id",     :default => 0
    t.string  "product_description"
    t.string  "product_url",         :default => "", :null => false
    t.string  "thumbnail_url"
    t.float   "price"
  end

  add_index "products", ["photo_id"], :name => "photo_id"

end
