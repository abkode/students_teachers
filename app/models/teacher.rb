class Teacher < ActiveRecord::Base
	has_many :student

  	validates :email, presence: true, uniqueness: true
  	validates :retirement_date, numericality: { less_than_or_equal_to: Date.today}

  	validate :retirement_date_must_be_after_hire_date
  	after_update :check_retirement_date if: :retirement_date

  	def retirement_date_must_be_after_hire_date
		if hire_date && retirement_date && retirement_date <= hire_date
	      errors.add(:hire_date, 'retirement date must be after hire date')
	    end
  	end	

  	private

  	def check_retirement_date
  		students.each do |student|
  			student.update_column(:teacher_id, nil)
  		end	
  	end
end

