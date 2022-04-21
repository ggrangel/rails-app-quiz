class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    @job = Job.new(job_params)

  if @job.save
    render 'jobs/create'
  end 
  end

  def index
    @jobs = Job.all
    render 'jobs/index'
  end

  def find
    @job = Job.find_by(id: params[:id])
    if @job 
      render 'jobs/find'
    end
  end
  
  private

  def job_params
    params.permit(:id, :url, :employer_name, :employer_description, :job_title, :job_description, :year_of_experience, :education, :industry, :base_salary, :employment_type_id)
  end
end
