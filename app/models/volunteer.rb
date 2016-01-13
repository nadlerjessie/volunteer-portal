class Volunteer < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :events
  has_many :attendance_statuses
end
