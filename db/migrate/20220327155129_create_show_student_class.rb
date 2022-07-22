class CreateShowStudentClass < ActiveRecord::Migration[7.0]
  def change
    create_table :show_student_classes do |t|
      t.string :students
      t.string :createclasses

      t.timestamps
    end
  end
end
