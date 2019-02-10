class ChangeColumnDefaultAnswersCorrect < ActiveRecord::Migration[5.2]
  def up
    change_column :answers, :correct, :int, default: 1
  end

  def down
    change_column :answers, :correct, :int, default: nil
  end
end
