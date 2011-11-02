class JobsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:index, :show]

  def add_job_to_user

  end
end
