require 'test_helper'

class JobbyJobsControllerTest < ActionController::TestCase
  setup do
    @jobby_job = jobby_jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobby_jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobby_job" do
    assert_difference('JobbyJob.count') do
      post :create, jobby_job: { challenge: @jobby_job.challenge, city: @jobby_job.city, company: @jobby_job.company, contact: @jobby_job.contact, description: @jobby_job.description, email: @jobby_job.email, follow_up: @jobby_job.follow_up, interview: @jobby_job.interview, interview_info: @jobby_job.interview_info, job_posting_description: @jobby_job.job_posting_description, job_posting_url: @jobby_job.job_posting_url, phone: @jobby_job.phone, resume_actually_sent: @jobby_job.resume_actually_sent, resume_to_be_sent: @jobby_job.resume_to_be_sent, street_address: @jobby_job.street_address, zip_code: @jobby_job.zip_code }
    end

    assert_redirected_to jobby_job_path(assigns(:jobby_job))
  end

  test "should show jobby_job" do
    get :show, id: @jobby_job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobby_job
    assert_response :success
  end

  test "should update jobby_job" do
    patch :update, id: @jobby_job, jobby_job: { challenge: @jobby_job.challenge, city: @jobby_job.city, company: @jobby_job.company, contact: @jobby_job.contact, description: @jobby_job.description, email: @jobby_job.email, follow_up: @jobby_job.follow_up, interview: @jobby_job.interview, interview_info: @jobby_job.interview_info, job_posting_description: @jobby_job.job_posting_description, job_posting_url: @jobby_job.job_posting_url, phone: @jobby_job.phone, resume_actually_sent: @jobby_job.resume_actually_sent, resume_to_be_sent: @jobby_job.resume_to_be_sent, street_address: @jobby_job.street_address, zip_code: @jobby_job.zip_code }
    assert_redirected_to jobby_job_path(assigns(:jobby_job))
  end

  test "should destroy jobby_job" do
    assert_difference('JobbyJob.count', -1) do
      delete :destroy, id: @jobby_job
    end

    assert_redirected_to jobby_jobs_path
  end
end
