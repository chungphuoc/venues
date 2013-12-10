class CreateAdminImages < ActiveRecord::Migration
  def self.up
    create_table :admin_images do |t|
      t.integer :image_id, :primary_key
      t.string :image

      t.timestamps
    end
  end

  def self.down
  end
end
