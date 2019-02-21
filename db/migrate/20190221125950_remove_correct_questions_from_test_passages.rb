class RemoveCorrectQuestionsFromTestPassages < ActiveRecord::Migration[5.2]
  def change
    remove_column :test_passages, :correct_questions, :integer
  end
end
