class CreateWorkedWiths < ActiveRecord::Migration[5.0]
  def change
    create_table :worked_withs do |t|
      t.integer  :student_id
      t.integer  :student_worked_with_id
      t.timestamps
    end
  end
end
