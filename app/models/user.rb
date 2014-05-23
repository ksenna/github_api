class User < ActiveRecord::Base

	has_many :gists
	
	has_secure_password

	validates_presence_of :email
	validates_uniqueness_of :email
	
end