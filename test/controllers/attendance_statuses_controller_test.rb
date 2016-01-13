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

require 'test_helper'

class AttendanceStatusesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
