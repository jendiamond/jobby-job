class JobbyJobsController < ApplicationController
  before_action :set_jobby_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobby_jobs = JobbyJob.all
  end

  def show
  end

  def new
    @jobby_job = JobbyJob.new
  end

  def edit
  end

  def create
    @jobby_job = JobbyJob.new(jobby_job_params)
    if @jobby_job.save
      redirect_to @jobby_job
    else
      render :new
    end
  end

  def update
    if @jobby_job.update(jobby_job_params)
      redirect_to @jobby_job
    else
      render :edit
      flash[:notice] = "Workout was not edited."
    end
  end

  def destroy
    @jobby_job.destroy
    flash[:notice] = "Workout deleted."
    redirect_to '/'
  end

  private
    def set_jobby_job
      @jobby_job = JobbyJob.find(params[:id])
    end

    def jobby_job_params
      params.require(:jobby_job).permit(:company, :job_title, :website, :rating,
        :street_address, :city, :zip_code, :contact, :phone, :email, :job_posting_url,
        :resume_to_be_sent, :resume_actually_sent, :description, :follow_up, :challenge,
        :interview, :interview_info)
    end
end
