class CreateKeywords < ActiveRecord::Migration
  def self.up
    create_table :keywords do |t|
      t.integer :id
      t.string :keyword
      t.string :keyword_description

      t.timestamps
    end
  end

  def self.down
    drop_table :keywords
  end
end
