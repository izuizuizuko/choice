class CreateProductImages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_images do |t|
      t.text :image
      t.string :product_id

      t.timestamps
    end
  end
end
