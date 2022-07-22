class AddQuizIdToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :quiz_id, :integer
  end
end
