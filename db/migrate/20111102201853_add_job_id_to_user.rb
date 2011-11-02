class AddJobIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :job_id, :integer
  end
end
