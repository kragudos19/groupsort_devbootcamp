class CreatePhases < ActiveRecord::Migration[5.0]
  def change
    create_table :phases do |t|
      t.integer :phase_num
      t.integer :cohort_id

      t.timestamps
    end
  end
end
