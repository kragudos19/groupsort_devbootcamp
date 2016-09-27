class Phase < ApplicationRecord
  validates :phase_num, :cohort_id, presence: true
  validates_numericality_of :phase_num, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 3
  belongs_to :cohort
  has_many :weeks
  has_many :student_weeks, through: :weeks
  has_many :students, through: :student_weeks
end
