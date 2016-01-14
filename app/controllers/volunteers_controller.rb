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

class VolunteersController < ApplicationController
  protect_from_forgery

end
