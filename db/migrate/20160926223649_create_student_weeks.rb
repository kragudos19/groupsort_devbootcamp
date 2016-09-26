class CreateStudentWeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :student_weeks do |t|
      t.integer :student_id
      t.integer :week_id

      t.timestamps
    end
  end
end
