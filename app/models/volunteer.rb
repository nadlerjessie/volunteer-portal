# == Schema Information
#
# Table name: volunteers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  birthday   :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Volunteer < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :skills
  has_and_belongs_to_many :events
  has_many :attendance_statuses
end
