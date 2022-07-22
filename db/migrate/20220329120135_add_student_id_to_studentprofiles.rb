class AddStudentIdToStudentprofiles < ActiveRecord::Migration[7.0]
  def change
    add_column :studentprofiles, :student_id, :integer
    add_index :studentprofiles, :student_id
  end
end
