class CreateTags < ActiveRecord::Migration
  def self.up
    create_table :tags do |t|
      t.integer :photo_id
      t.integer :keyword_id
      t.datetime :create_date

      t.timestamps
    end
  end

  def self.down
    drop_table :tags
  end
end
