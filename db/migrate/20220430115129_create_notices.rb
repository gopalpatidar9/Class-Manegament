class CreateNotices < ActiveRecord::Migration[7.0]
  def change
    create_table :notices do |t|
      t.string :massege
      t.string :file

      t.timestamps
    end
  end
end
