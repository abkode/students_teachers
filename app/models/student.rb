class Student < ActiveRecord::Base
  # implement your Student model here
  validates :email,
    format: {
      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
    }

  belongs_to :teacher

  after_save :add_field, if: :teacher

  def add_field
  	Teacher.last_student_added_at = Time.now
  end

  def name
  	first_name + ' ' + last_name
  end

  def age
  	now = Date.today
  	now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
  end

  	
end
