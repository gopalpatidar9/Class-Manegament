class CreateTimetables < ActiveRecord::Migration[7.0]
  def change
    create_table :timetables do |t|
      t.string :file

      t.timestamps
    end
  end
end
