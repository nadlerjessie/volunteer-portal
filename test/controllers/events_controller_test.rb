# == Schema Information
#
# Table name: events
#
#  id              :integer          not null, primary key
#  name            :string
#  date            :datetime
#  organization_id :integer
#  description     :string
#  volunteer_max   :integer
#  minimum_age     :integer
#  address         :string
#  latitude        :decimal(, )
#  longitude       :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
