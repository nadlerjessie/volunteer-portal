# == Schema Information
#
# Table name: attendance_statuses
#
#  id           :integer          not null, primary key
#  event_id     :integer
#  volunteer_id :integer
#  attended     :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class AttendanceStatus < ActiveRecord::Base
  belongs_to :event
  belongs_to :volunteer
  delegate :organization, to: :event
end
