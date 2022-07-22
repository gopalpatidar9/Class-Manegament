class CreateJoins < ActiveRecord::Migration[7.0]
  def change
    create_table :joins do |t|
      t.integer :createclass_id
      t.integer :student_id

      t.timestamps
    end
  end
end

