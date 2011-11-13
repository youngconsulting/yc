class AddJobCategoryIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :job_category_id, :integer
  end
end
