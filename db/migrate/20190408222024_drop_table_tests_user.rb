class DropTableTestsUser < ActiveRecord::Migration[5.2]
  def up
    drop_table :tests_user, if_exists: true
  end
end
