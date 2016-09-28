class WorkedWith < ApplicationRecord
  belongs_to :student
  belongs_to :student_worked_with, class_name: 'Student'
end
