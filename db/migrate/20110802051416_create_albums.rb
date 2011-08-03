class CreateAlbums < ActiveRecord::Migration
  def self.up
    create_table :albums do |t|
      t.integer :id
      t.integer :folder_id
      t.integer :photo_id
      t.integer :order_id

      t.timestamps
    end
    add_index :albums, :folder_id
    add_index :albums, :photo_id
    add_index :albums, [:folder_id, :photo_id], :unique => true
  end

  def self.down
    drop_table :albums
  end
end
