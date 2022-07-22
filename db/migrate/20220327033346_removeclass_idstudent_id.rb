class RemoveclassIdstudentId < ActiveRecord::Migration[7.0]
  def change
    remove_column :joins, :createclass_id, :integer
    remove_column :joins, :student_id, :integer
    add_reference :joins, :students
    add_reference :joins, :createclasses
  end
end
