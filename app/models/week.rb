class Week < ApplicationRecord
  # belongs_to :phase
  has_many :student_weeks
  has_many :students, through: :student_weeks
end
