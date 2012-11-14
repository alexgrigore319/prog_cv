class Experience < ActiveRecord::Base
  attr_accessible :cv_id, :description, :end_time, :job_title, :start_time
has_one :company, foreign_key => "exp_id"
belongs_to :cv
end
