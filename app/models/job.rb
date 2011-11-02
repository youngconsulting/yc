class Job < ActiveRecord::Base
  has_many :users, :through => :jobs_users
end
