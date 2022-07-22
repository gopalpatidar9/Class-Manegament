class CreateAssingments < ActiveRecord::Migration[7.0]
  def change
    create_table :assingments do |t|
      t.string :title
      t.integer :points
      t.datetime :duedate
      t.string :topic
      
      t.timestamps
    end
  end
end
