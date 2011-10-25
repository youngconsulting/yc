class AddFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :bday, :String
    add_column :users, :address, :string
    add_column :users, :areacode, :string
    add_column :users, :city, :string
    add_column :users, :education, :string
    add_column :users, :info, :text
    add_column :users, :looking_for, :string
  end
end
