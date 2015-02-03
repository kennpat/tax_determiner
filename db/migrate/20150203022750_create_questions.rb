class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :score_value
    end

    create_table :return_questions do |t|
      t.integer :question_id
      t.integer :return_id
    end

    add_index :questions, :question, unique: true
  end
end
