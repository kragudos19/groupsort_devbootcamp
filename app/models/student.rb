class Student < ApplicationRecord
  validates :first_name, :last_name, :cohort_id, presence: true
  belongs_to :cohort
  has_many :student_groups
  has_many :groups, through: :student_groups
  has_many :weeks, through: :groups
  has_many :phases, through: :weeks
  has_many :worked_withs
  has_many :student_worked_withs, through: :worked_withs
end
