class AddAnswersBodyAnswerNullConstraint < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:answers, :body_answer, false)
  end
end
