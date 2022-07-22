class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :file

      t.timestamps
    end
  end
end
