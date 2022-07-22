class AddCreateclassIdToContents < ActiveRecord::Migration[7.0]
  def change
    add_column :contents, :createclass_id, :integer
  end
end
