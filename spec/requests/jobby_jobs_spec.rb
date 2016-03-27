require 'rails_helper'
require 'spec_helper'

#------------------INDEX

describe "jobby_jobs", type: :request do
  let!(:jobby_job) { FactoryGirl.create(:jobby_job) }
  describe 'reading jobby_jobs' do
    it "should render jobby_jobs index template" do
      get '/jobby_jobs'
      expect(response).to have_http_status(200)
      expect(response).to render_template :index
    end
  end

#------------------NEW/CREATE

  describe 'GET /jobby_jobs/new' do
    it "should render jobby_jobs new template" do
      get '/jobby_jobs/new'
      expect(response).to have_http_status(200)
      expect(response).to render_template :new
    end
  end

  describe 'POST /jobby_jobs' do
    it 'should create a new jobby_job' do
      expect {
        post '/jobby_jobs', jobby_job: { company: jobby_job.company,
                                         job_title: jobby_job.job_title,
                                         website: jobby_job.website,
                                         rating: jobby_job.rating,
                                         street_address: jobby_job.street_address,
                                         city: jobby_job.city,
                                         zip_code: jobby_job.zip_code,
                                         contact: jobby_job.contact,
                                         phone: jobby_job.phone,
                                         email: jobby_job.email,
                                         job_posting_url: jobby_job.job_posting_url,
                                         resume_to_be_sent: jobby_job.resume_to_be_sent,
                                         resume_actually_sent: jobby_job.resume_actually_sent,
                                         description: jobby_job.description,
                                         follow_up: jobby_job.follow_up,
                                         challenge: jobby_job.challenge,
                                         interview: jobby_job.interview,
                                         interview_info: jobby_job.interview_info }
      }.to change(JobbyJob, :count).by(1)
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(jobby_job_url(JobbyJob.last.id))
    end
  end

#------------------SHOW

  describe 'GET /jobby_jobs/:id' do
    before do
      post '/jobby_jobs', jobby_job: { company: jobby_job.company,
                                         job_title: jobby_job.job_title,
                                         website: jobby_job.website,
                                         rating: jobby_job.rating,
                                         street_address: jobby_job.street_address,
                                         city: jobby_job.city,
                                         zip_code: jobby_job.zip_code,
                                         contact: jobby_job.contact,
                                         phone: jobby_job.phone,
                                         email: jobby_job.email,
                                         job_posting_url: jobby_job.job_posting_url,
                                         resume_to_be_sent: jobby_job.resume_to_be_sent,
                                         resume_actually_sent: jobby_job.resume_actually_sent,
                                         description: jobby_job.description,
                                         follow_up: jobby_job.follow_up,
                                         challenge: jobby_job.challenge,
                                         interview: jobby_job.interview,
                                         interview_info: jobby_job.interview_info }
    end

    it "should render jobby_job show template" do
      get "/jobby_jobs/#{JobbyJob.last.id}"
      expect(response).to have_http_status(200)
      expect(response).to render_template :show
    end
  end

#------------------EDIT/UPDATE

  describe 'GET /jobby_jobs/:id/edit' do
    it "should render jobby_jobs edit template" do
      get "/jobby_jobs/#{JobbyJob.last.id}/edit"
      expect(response).to have_http_status(200)
      expect(response).to render_template :edit
    end
  end

  describe 'POST /jobby_jobs/:id' do
    before do
      post '/jobby_jobs', jobby_job: { company: jobby_job.company,
                                         job_title: jobby_job.job_title,
                                         website: jobby_job.website,
                                         rating: jobby_job.rating,
                                         street_address: jobby_job.street_address,
                                         city: jobby_job.city,
                                         zip_code: jobby_job.zip_code,
                                         contact: jobby_job.contact,
                                         phone: jobby_job.phone,
                                         email: jobby_job.email,
                                         job_posting_url: jobby_job.job_posting_url,
                                         resume_to_be_sent: jobby_job.resume_to_be_sent,
                                         resume_actually_sent: jobby_job.resume_actually_sent,
                                         description: jobby_job.description,
                                         follow_up: jobby_job.follow_up,
                                         challenge: jobby_job.challenge,
                                         interview: jobby_job.interview,
                                         interview_info: jobby_job.interview_info }
    end

    it "should update a jobby_job" do
      expect {
        patch "/jobby_jobs/#{jobby_job.id}", jobby_job: { company: jobby_job.company,
                                         job_title: jobby_job.job_title,
                                         website: jobby_job.website,
                                         rating: jobby_job.rating,
                                         street_address: jobby_job.street_address,
                                         city: jobby_job.city,
                                         zip_code: jobby_job.zip_code,
                                         contact: jobby_job.contact,
                                         phone: jobby_job.phone,
                                         email: jobby_job.email,
                                         job_posting_url: jobby_job.job_posting_url,
                                         resume_to_be_sent: jobby_job.resume_to_be_sent,
                                         resume_actually_sent: jobby_job.resume_actually_sent,
                                         description: jobby_job.description,
                                         follow_up: jobby_job.follow_up,
                                         challenge: jobby_job.challenge,
                                         interview: jobby_job.interview,
                                         interview_info: jobby_job.interview_info }
      }.to change(JobbyJob, :count).by(0)
      expect(response).to have_http_status(302)
      expect(response).to redirect_to(jobby_job_url(jobby_job))
    end
  end

#------------------DELETE

  describe 'DELETE' do
    before do
      post '/jobby_jobs', jobby_job: { company: jobby_job.company,
                                         job_title: jobby_job.job_title,
                                         website: jobby_job.website,
                                         rating: jobby_job.rating,
                                         street_address: jobby_job.street_address,
                                         city: jobby_job.city,
                                         zip_code: jobby_job.zip_code,
                                         contact: jobby_job.contact,
                                         phone: jobby_job.phone,
                                         email: jobby_job.email,
                                         job_posting_url: jobby_job.job_posting_url,
                                         resume_to_be_sent: jobby_job.resume_to_be_sent,
                                         resume_actually_sent: jobby_job.resume_actually_sent,
                                         description: jobby_job.description,
                                         follow_up: jobby_job.follow_up,
                                         challenge: jobby_job.challenge,
                                         interview: jobby_job.interview,
                                         interview_info: jobby_job.interview_info }
    end

    it "should delete a jobby_job" do
      expect {
        delete "/jobby_jobs/#{JobbyJob.last.id}"
      }.to change(JobbyJob, :count).by(-1)
      expect(response).to have_http_status(302)
    end
  end

end
