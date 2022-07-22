class AddTeacherIdToProfiles < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :teacher_id, :integer
    add_index :profiles, :teacher_id
  end
end
