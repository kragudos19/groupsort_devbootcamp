class Student < ApplicationRecord
  validates :first_name, :last_name, :cohort_id, presence: true
  belongs_to :cohort
  has_many :student_weeks
  has_many :weeks, through: :student_weeks
end
