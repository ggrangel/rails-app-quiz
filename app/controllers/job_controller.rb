class JobController < ApplicationController
  def create
    @job = Job.new(job_params)
    render 'jobs/create'
  end

  def index
    @tasks = Task.all
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
    params.require(:job).permit(:url, :employer_name, :employer_description:, :job_title, :job_description, :year_of_experience, :education_requirement, :industry, :base_salary, :employment_type_id)
  end
  
end
