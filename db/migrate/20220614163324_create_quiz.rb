class CreateQuiz < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :subject
      t.string :chapter

      t.timestamps
    end
  end
end
