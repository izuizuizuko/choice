class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :company
      t.string :rank
      t.string :point

      t.timestamps
    end
  end
end
