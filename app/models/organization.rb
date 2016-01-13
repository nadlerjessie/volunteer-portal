# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  website    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Organization < ActiveRecord::Base
  belongs_to :user
  has_many :events
  has_many :volunteers, through: :events
  has_many :attendance_statuses, through: :events
  
end
