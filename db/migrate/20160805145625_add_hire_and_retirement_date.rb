class AddHireRetirementDate < ActiveRecord::Migration
  
  def change
    # Add code to create the table here
    # HINT: check out ActiveRecord::Migration.create_table
    add_column :teachers, :hire_date, :date  
    add_column :teachers, :retirement_date, :date  

  end

end
