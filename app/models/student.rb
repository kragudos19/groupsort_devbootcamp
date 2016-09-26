class Student < ApplicationRecord
  # belongs_to :cohort
  has_many :student_weeks
  has_many :weeks, through: :student_weeks
end
