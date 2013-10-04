class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :email, :string
      t.column :age, :integer
      t.timestamps
    end
  end
end
