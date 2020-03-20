class CreateRedImages < ActiveRecord::Migration[5.2]
  def change
    create_table :red_images do |t|
      t.text :image
      t.string :red_id

      t.timestamps
    end
  end
end
