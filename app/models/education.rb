class Education < ActiveRecord::Base
  attr_accessible :activities, :cv_id, :degree, :end_time, :institution, :start_time
belongs_to :cv
end
