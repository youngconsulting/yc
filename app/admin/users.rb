# encoding: UTF-8
ActiveAdmin.register User do
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
end
