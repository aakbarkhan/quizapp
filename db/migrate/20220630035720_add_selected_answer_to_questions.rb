class AddSelectedAnswerToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :selected_answer, :string
  end
end
