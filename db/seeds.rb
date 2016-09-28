# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cohort.create(name: "Salamanders", location: "San Diego")

phases = [
  Phase.create(phase_num: 1, cohort_id: 1),
  Phase.create(phase_num: 2, cohort_id: 1),
  Phase.create(phase_num: 3, cohort_id: 1)
]

weeks = [
  Week.create(phase: phases[0], week_number: 1),
  Week.create(phase: phases[0], week_number: 2),
  Week.create(phase: phases[0], week_number: 3),
  Week.create(phase: phases[1], week_number: 4),
  Week.create(phase: phases[1], week_number: 5),
  Week.create(phase: phases[1], week_number: 6),
  Week.create(phase: phases[2], week_number: 7),
  Week.create(phase: phases[2], week_number: 8),
  Week.create(phase: phases[2], week_number: 9)
]

j = 0
groups = []
9.times do
  groups << Group.create(week: weeks[j])
  groups << Group.create(week: weeks[j])
  groups << Group.create(week: weeks[j])
  groups << Group.create(week: weeks[j])
  j += 1
end

students = [
  Student.create(first_name:"Ezra", last_name: "Chiang", cohort_id: 1),
  Student.create(first_name:"Joe", last_name: "Bob", cohort_id: 1),
  Student.create(first_name:"Bob", last_name: "Johnson", cohort_id: 1),
  Student.create(first_name:"Kent", last_name: "Lu", cohort_id: 1),
  Student.create(first_name:"Larry", last_name: "Lucas", cohort_id: 1),
  Student.create(first_name:"Marv", last_name: "Gill", cohort_id: 1),
  Student.create(first_name:"Hank", last_name: "Bova", cohort_id: 1),
  Student.create(first_name:"Tony", last_name: "Yang", cohort_id: 1),
  Student.create(first_name:"Hello", last_name: "Wang", cohort_id: 1),
  Student.create(first_name:"Mary", last_name: "Wu", cohort_id: 1),
  Student.create(first_name:"Maggie", last_name: "Xi", cohort_id: 1),
  Student.create(first_name:"Kelly", last_name: "Stevens", cohort_id: 1),
  Student.create(first_name:"Brianne", last_name: "Garfield", cohort_id: 1),
  Student.create(first_name:"Levy", last_name: "Trump", cohort_id: 1),
  Student.create(first_name:"Greg", last_name: "Clinton", cohort_id: 1),
  Student.create(first_name:"Jon", last_name: "Snow", cohort_id: 1)
]

s = 0
groups.each do |group|
  StudentGroup.create!(student: students[s], group: group)
  StudentGroup.create!(student: students[s+=1], group: group)
  StudentGroup.create!(student: students[s+=1], group: group)
  StudentGroup.create!(student: students[s+=1], group: group)
  s+=1
  s = 0 if s == 16
end


