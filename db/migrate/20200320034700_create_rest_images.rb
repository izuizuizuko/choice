class CreateRestImages < ActiveRecord::Migration[5.2]
  def change
    create_table :rest_images do |t|
      t.text :image
      t.string :rest_id

      t.timestamps
    end
  end
end
