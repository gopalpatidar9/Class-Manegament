class CreateStudentprofiles < ActiveRecord::Migration[7.0]
  def change
    create_table :studentprofiles do |t|
      t.string :image

      t.timestamps
    end
  end
end
