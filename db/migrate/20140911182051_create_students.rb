class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :school
      t.string :grade
      t.string :teacher
      t.string :nickname
      t.string :teacher
      t.string :family_key

      t.timestamps
    end
  end
end
