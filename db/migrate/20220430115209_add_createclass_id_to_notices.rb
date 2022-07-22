class AddCreateclassIdToNotices < ActiveRecord::Migration[7.0]
  def change
    add_column :notices, :createclass_id, :integer
  end
end
