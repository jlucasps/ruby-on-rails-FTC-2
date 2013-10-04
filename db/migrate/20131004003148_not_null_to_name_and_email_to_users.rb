class NotNullToNameAndEmailToUsers < ActiveRecord::Migration
  def up
    change_column :users, :name, :string, :null => false
    change_column :users, :email, :string, :null => false
  end


  def up
    change_column :users, :name, :string, :null => true
    change_column :users, :email, :string, :null => true
  end
end
