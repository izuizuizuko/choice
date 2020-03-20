class CreateHordeolumImages < ActiveRecord::Migration[5.2]
  def change
    create_table :hordeolum_images do |t|
      t.text :image
      t.string :hordeolum_id

      t.timestamps
    end
  end
end
