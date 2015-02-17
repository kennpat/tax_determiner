class AddIndexToReturnQuestions < ActiveRecord::Migration
  def change
    add_index :return_questions, [:return_id, :question_id], unique: true
  end
end
