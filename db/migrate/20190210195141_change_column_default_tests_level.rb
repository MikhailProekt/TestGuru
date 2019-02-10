class ChangeColumnDefaultTestsLevel < ActiveRecord::Migration[5.2]
  def up
    change_column :tests, :level, :int, default: 0
  end

  def down
    change_column :tests, :level, :int, default: nil
  end
end
