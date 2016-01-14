# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  bio             :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_one :volunteer
  has_one :organization
  accepts_nested_attributes_for :organization
  accepts_nested_attributes_for :volunteer

  has_secure_password
  validates :name, presence: true

  def volunteer_attributes=(attributes)
    skills_params = attributes.delete :skills
    skills = skills_params.values[0].split(',').map {|v| Skill.new({name: v})}
    volunteer = Volunteer.new(attributes)
    volunteer.skills << skills
  end
  
end
