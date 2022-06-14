class AddTeacherRefToQuestion < ActiveRecord::Migration[7.0]
  def change
    add_reference :questions, :teacher, null: false, foreign_key: true
  end
end
