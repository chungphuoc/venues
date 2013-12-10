class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :category_name
      t.string :category_image_path
      t.text :category_description
      t.string :contact_number
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
  end
end
