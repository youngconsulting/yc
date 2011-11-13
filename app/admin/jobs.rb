ActiveAdmin.register Job do
	 index do
		column :id
		column :name	
		column :title
    column :job_category, :sortable => true
		default_actions
   end

   show do
     attributes_table :name, :title, :content
     render "users"
   end
end
