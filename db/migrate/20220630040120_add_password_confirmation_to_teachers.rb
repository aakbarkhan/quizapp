class AddPasswordConfirmationToTeachers < ActiveRecord::Migration[7.0]
  def change
    add_column :teachers, :password_confirmation, :string
  end
end
