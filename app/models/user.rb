class User < ActiveRecord::Base
  has_one :volunteer
  has_one :organization

  has_secure_password
end
