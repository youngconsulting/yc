class JobsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:index, :show]

  def add_job_to_user
    user = current_user
    user.update_attribute(:user_id, current_user.id)
  end
end
