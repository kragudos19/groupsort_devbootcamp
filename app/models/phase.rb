class Phase < ApplicationRecord
  validates :phase_num, :cohort_id, presence: true
  validates_numericality_of :phase_num, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 3
  belongs_to :cohort
  has_many :weeks
  has_many :groups, through: :weeks
  has_many :student_groups, through: :groups

  def new_weeks_and_groups(cohort)
    students = cohort.students.where(enrollment: 1)
    weeks = [
      Week.create(phase: self, week_number: ((self.phase_num - 1) * 3) + 1),
      Week.create(phase: self, week_number: ((self.phase_num - 1) * 3) + 2),
      Week.create(phase: self, week_number: ((self.phase_num - 1) * 3) + 3)
    ]

    weeks.each do |week|
      week.new_groups(cohort, self, students)
    end
  end





  private :student_groups, :student_groups=
  has_many :students, through: :student_groups, source: :student
end
