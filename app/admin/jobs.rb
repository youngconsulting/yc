ActiveAdmin.register Job do
	 index do
		column :id
		column :name	
		column :title
		default_actions
   end

   show do
     attributes_table :name, :title, :content
     render "users"
   end
end
