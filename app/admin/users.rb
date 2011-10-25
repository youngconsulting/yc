# encoding: UTF-8
ActiveAdmin.register User do
  index do
    column :id
    column "Förnamn", :fname
    column "Efternamn", :lname
    column "Utbildning", :education
    column "Söker jobb inom", :looking_for
    default_actions
  end
end
