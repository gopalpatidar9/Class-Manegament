class AddInstructionFileToAssingments < ActiveRecord::Migration[7.0]
  def change
    add_column :assingments, :instruction, :string
    add_column :assingments, :file, :string
  end
end
