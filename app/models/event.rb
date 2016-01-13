class Event < ActiveRecord::Base
  belongs_to :organization
  has_many :volunteers
  has_many :requirements
  has_many :skills, through: :requirements
  has_many :attendance_statuses
end
