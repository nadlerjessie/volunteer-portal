class Event < ActiveRecord::Base
  belongs_to :organization
  has_many :volunteers
  has_many :requirements
  
end
