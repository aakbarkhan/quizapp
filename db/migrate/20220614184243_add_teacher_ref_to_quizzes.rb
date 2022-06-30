class AddTeacherRefToQuizzes < ActiveRecord::Migration[7.0]
  def change
    add_reference :quizzes, :teacher, null: false, foreign_key: true
  end
end
