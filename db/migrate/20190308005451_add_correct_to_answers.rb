class AddCorrectToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :correct, :boolean, null: false, default: false
  end
end