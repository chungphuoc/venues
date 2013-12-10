class CreateTestimonials < ActiveRecord::Migration
  def self.up
    create_table :testimonials do |t|
      t.integer :testimonial_id, :primary_key
      t.string :testimonial_title
      t.text :testimonial_content


      t.timestamps
    end
  end

  def self.down
  end
end
