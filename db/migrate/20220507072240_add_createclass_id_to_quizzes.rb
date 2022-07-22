class AddCreateclassIdToQuizzes < ActiveRecord::Migration[7.0]
  def change
    add_column :quizzes, :createclass_id, :integer
  end
end
