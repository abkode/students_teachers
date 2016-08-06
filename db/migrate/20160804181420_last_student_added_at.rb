class LastStudentAddedAt < ActiveRecord::Migration
  
  def change
    # Add code to create the table here
    # HINT: check out ActiveRecord::Migration.create_table
    add_column :teachers, :last_student_added_at, :date  

  end

end
