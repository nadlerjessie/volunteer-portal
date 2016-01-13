# == Schema Information
#
# Table name: requirements
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  skill_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Requirement < ActiveRecord::Base
  belongs_to :event
  belongs_to :skill
end
