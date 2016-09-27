class Cohort < ApplicationRecord
  validates :name, :location, presence: true
  has_many :students
  has_many :phases
  has_many :weeks, through: :phases
end
