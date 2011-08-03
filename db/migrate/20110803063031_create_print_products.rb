class CreatePrintProducts < ActiveRecord::Migration
  def self.up
    create_table :print_products do |t|
      t.integer :photo_print_product_id
      t.integer :photo_id
      t.integer :paper_type_id
      t.integer :width
      t.integer :height
      t.string :matted
      t.string :framed
      t.float :price
      t.string :print_description
      t.datetime :create_date

      t.timestamps
    end
  end

  def self.down
    drop_table :print_products
  end
end
