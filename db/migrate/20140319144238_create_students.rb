class CreateStudents < ActiveRecord::Migration
  
  def change
    # Add code to create the table here
    # HINT: check out ActiveRecord::Migration.create_table
    create_table :students do |t|
      t.belongs_to :teacher
      t.string :first_name
      t.string :last_name
    	t.string :gender
    	t.string :email
    	t.string :phone
    	t.date :birthday
    	t.datetime :created_at
    	t.datetime :updated_at
      # column definitions go here
      # Use the AR migration guide for syntax reference
    end
  end

end
