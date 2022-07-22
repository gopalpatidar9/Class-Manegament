class CreateStudentassingments < ActiveRecord::Migration[7.0]
  def change
    create_table :studentassingments do |t|
      t.string :file

      t.timestamps
    end
  end
end
