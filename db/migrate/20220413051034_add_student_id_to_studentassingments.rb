class AddStudentIdToStudentassingments < ActiveRecord::Migration[7.0]
  def change
    add_column :studentassingments, :student_id, :integer
  end
end
