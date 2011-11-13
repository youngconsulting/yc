class JobCategory < ActiveRecord::Base
  has_many :jobs
end
