# encoding: UTF-8
ActiveAdmin.register User do
	
	filter :fname
	filter :lname 
	filter :bday
	filter :looking_for
	filter :city

  index do
    column :id
    
		column "Förnamn", :fname do |user|
			link_to user.fname, admin_user_path(user)
		end
    
		column "Efternamn", :lname do |user|
			link_to user.lname, admin_user_path(user)
		end

		column "Födelsedag", :bday
		column "Utbildning", :education
		column "Söker jobb inom", :looking_for
		column "E-mail", :email
		default_actions
  end

	show do
    attributes_table :fname, :lname, :bday, :address, :areacode, :city, :education, :info, :looking_for,
    :tele, :cv_file_name  
  end

end
