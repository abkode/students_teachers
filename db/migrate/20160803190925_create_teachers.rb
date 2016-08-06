class CreateTeachers < ActiveRecord::Migration
  
  def change
    # Add code to create the table here
    # HINT: check out ActiveRecord::Migration.create_table
    create_table :teachers do |t|
      t.has_many :student
    	t.string :name
    	t.string :email
    	t.string :address
    	t.date :birthday
    	t.string :phone
      t.datetime :created_at
      t.datetime :updated_at
      # column definitions go here
      # Use the AR migration guide for syntax reference
    end
  end

end
