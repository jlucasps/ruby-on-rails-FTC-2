class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.column :name, :string, :null => false
      t.column :description, :string
      t.references :user, :foreign_key => true
      t.column :date, :datetime, :null => false
      t.column :value, :decimal
      t.timestamps
    end
  end
end
