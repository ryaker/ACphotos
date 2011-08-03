class CreateRatings < ActiveRecord::Migration
  def self.up
    create_table :ratings do |t|
      t.integer :photo_id
      t.integer :rating
      t.datetime :create_date

      t.timestamps
    end
  end

  def self.down
    drop_table :ratings
  end
end
