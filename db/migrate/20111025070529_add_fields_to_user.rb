class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :tele, :string
  end
end
