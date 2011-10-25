class AddAttachmentCvToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :cv_file_name, :string
    add_column :users, :cv_content_type, :string
    add_column :users, :cv_file_size, :integer
    add_column :users, :cv_updated_at, :datetime
  end

  def self.down
    remove_column :users, :cv_file_name
    remove_column :users, :cv_content_type
    remove_column :users, :cv_file_size
    remove_column :users, :cv_updated_at
  end
end
