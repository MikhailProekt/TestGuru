class AddUserReferenceToTestPassages < ActiveRecord::Migration[5.2]
  def change
    add_reference :test_passages, :user, foreign_key: true
  end
end
