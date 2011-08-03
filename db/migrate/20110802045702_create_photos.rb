class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :id
      t.string :photo_name
      t.string :image_path
      t.string :thumbnail_path
      t.string :size
      t.string :dimensions
      t.integer :primary_color_id
      t.string :photo_credit
      t.text :photo_keywords
      t.datetime :create_date

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
