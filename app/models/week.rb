class Week < ApplicationRecord
  validates :phase_id, :week_number, presence: true
  validates_numericality_of :week_number, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 9
  belongs_to :phase
  has_one :cohort, through: :phase
  has_many :groups
  has_many :student_groups, through: :groups
  has_many :students, through: :student_groups

  def new_groups(cohort, phase, students)
    studentlength = students.length
    groupcount = studentlength/4
    remainder = studentlength%4
    studentlength += 1 if studentlength%4 == 3
    students = students.shuffle
    groups = []
    groupcount.times do
      groups << Group.create(week: self)
    end
    assign_groups(groups, students, remainder)
  end

  def assign_groups(groups, students, remainder)
    s = 0
    if remainder == 0
      groups.each do |group|
        a = group_loop4(group, students, s)
        s = a
      end
    elsif remainder == 1
      oddgroup = groups.delete_at(0)
      groups.each do |group|
        a = group_loop4(group, students, s)
        s = a
      end
      group_loop5(oddgroup, students, s)
    elsif remainder == 2
      oddgroups = []
      oddgroups << groups.delete_at(0)
      oddgroups << groups.delete_at(0)
      groups.each do |group|
        a = group_loop4(group, students, s)
        s = a
      end
      oddgroups.each do |group|
        a = group_loop5(group, students, s)
        s = a
      end
    else # remainder == 3
      oddgroup = groups.delete_at(0)
      groups.each do |group|
        a = group_loop4(group, students, s)
        s = a
      end
      group_loop3(oddgroup, students, s)
    end
  end

  def group_loop3(group, students, s)
      StudentGroup.create!(student: students[s], group: group)
      StudentGroup.create!(student: students[s+=1], group: group)
      StudentGroup.create!(student: students[s+=1], group: group)
      return s += 1
  end

  def group_loop4(group, students, s)
      StudentGroup.create!(student: students[s], group: group)
      StudentGroup.create!(student: students[s+=1], group: group)
      StudentGroup.create!(student: students[s+=1], group: group)
      StudentGroup.create!(student: students[s+=1], group: group)
      return s += 1
  end

  def group_loop5(group, students, s)
      StudentGroup.create!(student: students[s], group: group)
      StudentGroup.create!(student: students[s+=1], group: group)
      StudentGroup.create!(student: students[s+=1], group: group)
      StudentGroup.create!(student: students[s+=1], group: group)
      StudentGroup.create!(student: students[s+=1], group: group)
      return s += 1
  end


end


