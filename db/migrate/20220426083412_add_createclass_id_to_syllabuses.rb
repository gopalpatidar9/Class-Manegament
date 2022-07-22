class AddCreateclassIdToSyllabuses < ActiveRecord::Migration[7.0]
  def change
    add_column :syllabuses, :createclass_id, :integer
  end
end
