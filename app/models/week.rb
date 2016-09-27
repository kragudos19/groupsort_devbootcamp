class Week < ApplicationRecord
  validates :phase_id, :week_number, presence: true
  validates_numericality_of :week_number, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 9
  belongs_to :phase
  has_one :cohort, through: :phase
  has_many :groups
  has_many :student_groups, through: :groups
  has_many :students, through: :student_groups
end


