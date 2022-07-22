class CreateJoinTableStudentsCreateclasses < ActiveRecord::Migration[7.0]
  def change
    create_join_table :students, :createclasses do |t|
      # t.index [:student_id, :createclass_id]
      # t.index [:createclass_id, :student_id]
    end
  end
end
