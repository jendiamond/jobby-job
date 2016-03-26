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

    respond_to do |format|
      if @jobby_job.save
        format.html { redirect_to @jobby_job, notice: 'Jobby job was successfully created.' }
        format.json { render :show, status: :created, location: @jobby_job }
      else
        format.html { render :new }
        format.json { render json: @jobby_job.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @jobby_job.update(jobby_job_params)
        format.html { redirect_to @jobby_job, notice: 'Jobby job was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobby_job }
      else
        format.html { render :edit }
        format.json { render json: @jobby_job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @jobby_job.destroy
    respond_to do |format|
      format.html { redirect_to jobby_jobs_url, notice: 'Jobby job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_jobby_job
      @jobby_job = JobbyJob.find(params[:id])
    end

    def jobby_job_params
      params.require(:jobby_job).permit(:company, :job_title, :website, :rating, :street_address, :city, :zip_code, :contact, :phone, :email, :job_posting_url, :resume_to_be_sent, :resume_actually_sent, :description, :follow_up, :challenge, :interview, :interview_info)
    end
end
