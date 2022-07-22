class AddNameToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :name, :string
  end
end
