class Cv < ActiveRecord::Base
  attr_accessible :about, :contact_email, :phone, :user_id
  belongs_to :user
end
