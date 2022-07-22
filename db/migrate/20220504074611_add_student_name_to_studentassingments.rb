class AddStudentNameToStudentassingments < ActiveRecord::Migration[7.0]
  def change
    add_column :studentassingments, :student_name, :string
  end
end
