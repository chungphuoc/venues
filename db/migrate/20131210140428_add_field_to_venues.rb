class AddFieldToVenues < ActiveRecord::Migration
  def self.up
    add_column :venues, :lan, :string
    add_column :venues, :lat, :string
    add_column :venues, :image, :text
    add_column :venues, :date__venue, :date
  end

  def self.down
  end
end
