class AttendanceStatus < ActiveRecord::Base
  belongs_to :event
  belongs_to :volunteer
  belongs_to :organization, through: :event
end
