class AddCreateclassIdToTimetables < ActiveRecord::Migration[7.0]
  def change
    add_column :timetables, :createclass_id, :integer
  end
end
