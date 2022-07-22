class AddTeacherIdToCreateclasses < ActiveRecord::Migration[7.0]
  def change
    add_column :createclasses, :teacher_id, :integer
    add_index :createclasses, :teacher_id
  end
end
