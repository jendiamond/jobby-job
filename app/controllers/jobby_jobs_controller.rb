class JobbyJobsController < ApplicationController
  before_action :set_jobby_job, only: [:show, :edit, :update, :destroy]

  # GET /jobby_jobs
  # GET /jobby_jobs.json
  def index
    @jobby_jobs = JobbyJob.all
  end

  # GET /jobby_jobs/1
  # GET /jobby_jobs/1.json
  def show
  end

  # GET /jobby_jobs/new
  def new
    @jobby_job = JobbyJob.new
  end

  # GET /jobby_jobs/1/edit
  def edit
  end

  # POST /jobby_jobs
  # POST /jobby_jobs.json
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

  # PATCH/PUT /jobby_jobs/1
  # PATCH/PUT /jobby_jobs/1.json
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

  # DELETE /jobby_jobs/1
  # DELETE /jobby_jobs/1.json
  def destroy
    @jobby_job.destroy
    respond_to do |format|
      format.html { redirect_to jobby_jobs_url, notice: 'Jobby job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobby_job
      @jobby_job = JobbyJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobby_job_params
      params.require(:jobby_job).permit(:company, :street_address, :city, :zip_code, :contact, :phone, :email, :job_posting_url, :job_posting_description, :resume_to_be_sent, :resume_actually_sent, :description, :follow_up, :challenge, :interview, :interview_info)
    end
end
