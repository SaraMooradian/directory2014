class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|

      t.string :name
      t.text :school
      t.text :displayname
      t.string :grade

      t.timestamps
    end
  end
end
