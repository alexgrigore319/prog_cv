class Cv < ActiveRecord::Base
  attr_accessible :about, :contact_email, :phone, :user_id
  has_many :experiences, :foreign_key => "cv_id"
  has_many :educations, :foreign_key => "cv_id"
  has_one :user
end
