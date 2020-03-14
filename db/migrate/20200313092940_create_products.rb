class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :company
      t.string :rank
      t.string :point
      t.text :body

      t.timestamps
    end
  end
end
