class AddNameToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :name, :string
  end
end
