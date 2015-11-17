class CreateChangeUser < ActiveRecord::Migration
  def change
    remove_column :users, :name
    rename_column :users, :email, :user_name
  end
end
