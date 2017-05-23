class User < ActiveRecord::Base

	# validates_presence_of :password, :username
	validates :username, uniqueness: true, presence: true
	validates :password, presence: true

end
