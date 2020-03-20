class CreateStrainImages < ActiveRecord::Migration[5.2]
  def change
    create_table :strain_images do |t|
      t.text :image
      t.string :strain_id

      t.timestamps
    end
  end
end
