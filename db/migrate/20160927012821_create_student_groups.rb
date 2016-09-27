class CreateStudentGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :student_groups do |t|
      t.integer :group_id
      t.integer :student_id

      t.timestamps
    end
  end
end
