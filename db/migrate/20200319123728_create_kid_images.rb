class CreateKidImages < ActiveRecord::Migration[5.2]
  def change
    create_table :kid_images do |t|
      t.text :image
      t.string :kid_id

      t.timestamps
    end
  end
end
