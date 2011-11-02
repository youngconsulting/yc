# encoding: UTF-8
class User < ActiveRecord::Base
  has_many :jobs, :through => :jobs_users
  
  devise :database_authenticatable, :registerable, :recoverable, :trackable, :validatable

  attr_accessible :email, :password, 
    :password_confirmation, 
    :remember_me, 
    :fname, 
    :lname, 
    :bday, 
    :address, 
    :areacode, 
    :city, 
    :education, 
    :info, 
    :looking_for, 
    :tele,
    :cv,
    :cv_file_name, 
    :cv_content_type,
    :cv_file_size,
    :cv_updated_at

  has_attached_file :cv

  validates_attachment_size :cv, :less_than => 2.megabytes
end
