class StudentWeek < ApplicationRecord
  belongs_to :week
  belongs_to :student
end
