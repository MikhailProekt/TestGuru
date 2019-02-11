class RenameEMailToEmailInUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :e_mail, :email
  end
end
