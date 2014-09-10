class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :school
      t.string :displayname
      t.string :grade

      t.timestamps
    end
  end
end
