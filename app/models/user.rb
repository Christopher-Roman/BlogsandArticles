class User < ApplicationRecord
	has_secure_password
	validates_presence_of :username
  	validates_uniqueness_of :username
  	validates_length_of :username, minimum: 5, maximum: 15, allow_blank: false
  	validates_length_of :password, minimum: 6, maximum: 15, allow_blank: false

end
