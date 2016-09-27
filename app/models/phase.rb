class Phase < ApplicationRecord
  belongs_to :cohort
  has_many :weeks
  has_many :student_weeks, through: :weeks
  has_many :students, through: :student_weeks
end
