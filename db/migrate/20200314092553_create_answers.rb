class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :user_id, foreign_key: true
      t.references :question_id, foreign_key: true
      t.text :body
      t.string :name
      t.timestamps
    end
  end
end
