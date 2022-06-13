class CreateStudent < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :role
      t.string :name
      t.string :school
      t.string :dob
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
