json.array!(@jobby_jobs) do |jobby_job|
  json.extract! jobby_job, :id, :company, :job_title, :website, :rating, :street_address, :city, :zip_code, :contact, :phone, :email, :job_posting_url, :resume_to_be_sent, :resume_actually_sent, :description, :follow_up, :challenge, :interview, :interview_info
  json.url jobby_job_url(jobby_job, format: :json)
end
