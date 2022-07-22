class CreateCreateclasses < ActiveRecord::Migration[7.0]
  def change
    create_table :createclasses do |t|
      t.string :classname
      t.string :subjectcode
      t.string :branchcode
      t.string :collegecode
      t.integer :session

      t.timestamps
    end
  end
end
