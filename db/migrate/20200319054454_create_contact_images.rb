class CreateContactImages < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_images do |t|
      t.text :image
      t.string :contact_id

      t.timestamps
    end
  end
end
