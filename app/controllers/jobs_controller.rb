# encoding: UTF-8
class JobsController < InheritedResources::Base
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @jobs = Job.order("updated_at DESC").all
  end

  def add_job
    @job = Job.find(params[:id])
    current_user.jobs << @job
    redirect_to jobs_path, :notice => "Du har nu sökt jobbet: #{@job.name}."
  end
end
