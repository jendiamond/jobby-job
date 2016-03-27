class CreateJobbyJobs < ActiveRecord::Migration
  def change
    create_table :jobby_jobs do |t|
      t.string :company
      t.string :job_title
      t.string :website
      t.integer :rating
      t.string :street_address
      t.string :city
      t.string :zip_code
      t.string :contact
      t.string :phone
      t.string :email
      t.string :job_posting_url
      t.date :resume_to_be_sent
      t.date :resume_actually_sent
      t.text :description
      t.text :follow_up
      t.text :challenge
      t.datetime :interview
      t.text :interview_info

      t.timestamps null: false
    end
  end
end
