class RemoveCorrectFromAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :correct, :integer
  end
end
