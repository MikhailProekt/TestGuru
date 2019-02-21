class AddTestReferenceToTestPassages < ActiveRecord::Migration[5.2]
  def change
    add_reference :test_passages, :test, foreign_key: true
  end
end
