class CreateTestPassages < ActiveRecord::Migration[5.2]
  def change
    create_table :test_passages do |t|
      t.integer :correct_questions, default: 0

      t.timestamps
    end
  end
end
