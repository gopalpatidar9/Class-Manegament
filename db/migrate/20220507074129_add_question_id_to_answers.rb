class AddQuestionIdToAnswers < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :question_id, :integer
  end
end
