class Cohort < ApplicationRecord
  has_many :students
  has_many :phases
  has_many :weeks, through: :phases
end
