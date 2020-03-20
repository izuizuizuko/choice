class CreateReds < ActiveRecord::Migration[5.2]
  def change
    create_table :reds do |t|
      t.string :name
      t.string :company
      t.string :rank
      t.string :point
      t.string :pit1
      t.string :pit2
      t.string :pit3
      t.string :advice1
      t.string :advice2
      t.string :advice3
      t.string :picture

      t.timestamps
    end
  end
end
