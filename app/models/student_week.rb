class StudentWeek < ApplicationRecord
  validates :student_id, :week_id
  belongs_to :week
  belongs_to :student
end
