class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :body_answer
      t.integer :correct

      t.timestamps
    end
  end
end
