class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :city
      t.string :state
      t.text :content
      t.string :company

      t.timestamps
    end
  end
end
