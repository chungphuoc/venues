class CreateAbout < ActiveRecord::Migration
  def self.up
    create_table :about do |t|
      t.text :about_us
      t.string :contact

      t.timestamps
    end
  end

  def self.down
  end
end
