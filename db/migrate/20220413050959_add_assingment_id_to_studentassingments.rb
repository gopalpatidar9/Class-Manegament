class AddAssingmentIdToStudentassingments < ActiveRecord::Migration[7.0]
  def change
    add_column :studentassingments, :assingment_id, :integer
  end
end
