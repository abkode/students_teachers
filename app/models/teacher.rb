class Teacher < ActiveRecord::Base
	has_many :student

  	validates :email, presence: true, uniqueness: true

end
