class Organization < ActiveRecord::Base
  belongs_to :user
  has_many :events
  has_many :volunteers, through: :events
  has_many :attendance_statuses, through: :events
  
end
