class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :descripation

      t.timestamps
    end
  end
end
