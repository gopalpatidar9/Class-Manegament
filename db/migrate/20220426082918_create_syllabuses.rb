class CreateSyllabuses < ActiveRecord::Migration[7.0]
  def change
    create_table :syllabuses do |t|
      t.string :file

      t.timestamps
    end
  end
end
