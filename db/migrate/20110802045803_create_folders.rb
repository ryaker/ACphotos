class CreateFolders < ActiveRecord::Migration
  def self.up
    create_table :folders do |t|
      t.integer :id
      t.string :folders_name
      t.string :folders_description
      t.string :parent_url

      t.timestamps
    end
  end

  def self.down
    drop_table :folders
  end
end
