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

class Event < ActiveRecord::Base
  belongs_to :organization
  has_and_belongs_to_many :volunteers
  has_many :requirements
  has_many :skills, through: :requirements
  has_many :attendance_statuses
end
