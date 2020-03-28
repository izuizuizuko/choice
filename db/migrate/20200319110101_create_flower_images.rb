class CreateFlowerImages < ActiveRecord::Migration[5.2]
  def change
    create_table :flower_images do |t|
      t.text :image
      t.string :flower_id

      t.timestamps
    end
  end
end
