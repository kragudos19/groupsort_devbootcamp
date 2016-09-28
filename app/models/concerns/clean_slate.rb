def new_groups(cohort, phase, students)
  group_array_w_sizes = group_count_sizes(students)
  groups = make_groups(group_array_w_sizes.length)
  populate_groups(groups, group_array_w_sizes, students)
end

def make_groups(count)
  groups = []
  count.times do
    groups << Group.create(week: self)
  end
  return groups
end

def group_count_sizes(students)
  studentlength = students.length
  groupcount = studentlength/4
  remainder = studentlength%4
  group_sizes = []
  if remainder > 0 && remainder < 3
    (group_sizes << 5)*remainder
  end
  (groupcount - group_sizes.length).times do
    group_sizes << 4
  end
  if remainder == 3
    group_sizes << 3
  end
  return group_sizes
end

def populate_groups(groups, group_sizes, students)
  set = []
  groups.each_index do |i|
    possible_groups = students.to_a.combination(group_sizes[i]).to_a
    check_new(group[i], possible_groups)
  end

end


def check_new(group_obj, possible_groups)
  possible_groups.each do |potential_group|
    potential_group.each do |student|
      if (potential_group & student.student_worked_withs).length == 0
        group_obj.students << potential_group
        return potential_group
      end
    end
  end
end
