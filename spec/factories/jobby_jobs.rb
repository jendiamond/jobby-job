FactoryGirl.define do
  factory :jobby_job do |f|
    f.company { FFaker::Company.name }
    f.job_title { FFaker::Job.title }
    f.website { 'fakeo.com' }
    f.rating { 3 }
    f.street_address{ FFaker::AddressUS.street_address }
    f.city { FFaker::AddressUS.city }
    f.zip_code { FFaker::AddressUS.zip_code }
    f.contact { FFaker::Name.name }
    f.phone { '555-465-555' }
    f.email { 'name@email.com' }
    f.job_posting_url { 'fakeo.com' }
    f.resume_to_be_sent { Date.today.strftime("%A, %B %d %I") }
    f.resume_actually_sent { Date.today.strftime("%A, %B %d %I") }
    f.description { FFaker::HipsterIpsum.paragraph }
    f.follow_up { FFaker::HipsterIpsum.paragraph }
    f.challenge { FFaker::HipsterIpsum.paragraph }
    f.interview { Date.today.strftime("%A, %B %d %I:%M %P") }
    f.interview_info { FFaker::HipsterIpsum.paragraph }
  end
end
