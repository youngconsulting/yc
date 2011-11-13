class Job < ActiveRecord::Base
  has_many :applications
  has_many :users, :through => :applications
  belongs_to :job_category
end
