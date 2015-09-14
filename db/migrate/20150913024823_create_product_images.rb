class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
      t.belongs_to :product, index: true
      t.string :image

      t.timestamps
    end
  end
end
