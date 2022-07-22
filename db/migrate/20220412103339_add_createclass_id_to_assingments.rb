class AddCreateclassIdToAssingments < ActiveRecord::Migration[7.0]
  def change
    add_column :assingments, :createclass_id, :integer
  end
end
