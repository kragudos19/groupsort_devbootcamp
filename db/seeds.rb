# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new(email: "a@a.com", password: "qwerty", password_confirmation: "qwerty")
user.skip_confirmation!
user.save

def full_cohort
  cohort = Cohort.create(name: "Salamanders", location: "San Diego")

  phases = [
    Phase.create(phase_num: 1, cohort: cohort),
    Phase.create(phase_num: 2, cohort: cohort),
    Phase.create(phase_num: 3, cohort: cohort)
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
    Student.create(first_name:"Ezra", last_name: "Chiang", cohort: cohort),
    Student.create(first_name:"Joe", last_name: "Bob", cohort: cohort),
    Student.create(first_name:"Bob", last_name: "Johnson", cohort: cohort),
    Student.create(first_name:"Kent", last_name: "Lu", cohort: cohort),
    Student.create(first_name:"Larry", last_name: "Lucas", cohort: cohort),
    Student.create(first_name:"Marv", last_name: "Gill", cohort: cohort),
    Student.create(first_name:"Hank", last_name: "Bova", cohort: cohort),
    Student.create(first_name:"Tony", last_name: "Yang", cohort: cohort),
    Student.create(first_name:"Hello", last_name: "Wang", cohort: cohort),
    Student.create(first_name:"Mary", last_name: "Wu", cohort: cohort),
    Student.create(first_name:"Maggie", last_name: "Xi", cohort: cohort),
    Student.create(first_name:"Kelly", last_name: "Stevens", cohort: cohort),
    Student.create(first_name:"Brianne", last_name: "Garfield", cohort: cohort),
    Student.create(first_name:"Levy", last_name: "Trump", cohort: cohort),
    Student.create(first_name:"Greg", last_name: "Clinton", cohort: cohort),
    Student.create(first_name:"Jon", last_name: "Snow", cohort: cohort)
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
end

def two_phase
  cohort = Cohort.create(name: "Two Phases Test", location: "San Diego")

  phases = [
    Phase.create(phase_num: 1, cohort: cohort),
    Phase.create(phase_num: 2, cohort: cohort),
  ]

  weeks = [
    Week.create(phase: phases[0], week_number: 1),
    Week.create(phase: phases[0], week_number: 2),
    Week.create(phase: phases[0], week_number: 3),
    Week.create(phase: phases[1], week_number: 4),
    Week.create(phase: phases[1], week_number: 5),
    Week.create(phase: phases[1], week_number: 6)
  ]

  j = 0
  groups = []
  6.times do
    groups << Group.create(week: weeks[j])
    groups << Group.create(week: weeks[j])
    groups << Group.create(week: weeks[j])
    groups << Group.create(week: weeks[j])
    j += 1
  end

  students = [
    Student.create(first_name:"Ezra", last_name: "Chiang", cohort: cohort),
    Student.create(first_name:"Joe", last_name: "Bob", cohort: cohort),
    Student.create(first_name:"Bob", last_name: "Johnson", cohort: cohort),
    Student.create(first_name:"Kent", last_name: "Lu", cohort: cohort),
    Student.create(first_name:"Larry", last_name: "Lucas", cohort: cohort),
    Student.create(first_name:"Marv", last_name: "Gill", cohort: cohort),
    Student.create(first_name:"Hank", last_name: "Bova", cohort: cohort),
    Student.create(first_name:"Tony", last_name: "Yang", cohort: cohort),
    Student.create(first_name:"Hello", last_name: "Wang", cohort: cohort),
    Student.create(first_name:"Mary", last_name: "Wu", cohort: cohort),
    Student.create(first_name:"Maggie", last_name: "Xi", cohort: cohort),
    Student.create(first_name:"Kelly", last_name: "Stevens", cohort: cohort),
    Student.create(first_name:"Brianne", last_name: "Garfield", cohort: cohort),
    Student.create(first_name:"Levy", last_name: "Trump", cohort: cohort),
    Student.create(first_name:"Greg", last_name: "Clinton", cohort: cohort),
    Student.create(first_name:"Jon", last_name: "Snow", cohort: cohort)
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
end

def one_phase
  cohort = Cohort.create(name: "One Phase Test", location: "San Diego")

  phases = [
    Phase.create(phase_num: 1, cohort: cohort)
  ]

  weeks = [
    Week.create(phase: phases[0], week_number: 1),
    Week.create(phase: phases[0], week_number: 2),
    Week.create(phase: phases[0], week_number: 3)
  ]

  j = 0
  groups = []
  # Number based on number of weeks
  3.times do
    groups << Group.create(week: weeks[j])
    groups << Group.create(week: weeks[j])
    groups << Group.create(week: weeks[j])
    groups << Group.create(week: weeks[j])
    j += 1
  end

  students = [
    Student.create(first_name:"Ezra", last_name: "Chiang", cohort: cohort),
    Student.create(first_name:"Joe", last_name: "Bob", cohort: cohort),
    Student.create(first_name:"Bob", last_name: "Johnson", cohort: cohort),
    Student.create(first_name:"Kent", last_name: "Lu", cohort: cohort),
    Student.create(first_name:"Larry", last_name: "Lucas", cohort: cohort),
    Student.create(first_name:"Marven", last_name: "Gill", cohort: cohort),
    Student.create(first_name:"Hank", last_name: "Bova", cohort: cohort),
    Student.create(first_name:"Tony", last_name: "Yang", cohort: cohort),
    Student.create(first_name:"Hello", last_name: "Wang", cohort: cohort),
    Student.create(first_name:"Mary", last_name: "Wu", cohort: cohort),
    Student.create(first_name:"Maggie", last_name: "Xi", cohort: cohort),
    Student.create(first_name:"Kelly", last_name: "Stevens", cohort: cohort),
    Student.create(first_name:"Brianne", last_name: "Garfield", cohort: cohort),
    Student.create(first_name:"Levy", last_name: "Trump", cohort: cohort),
    Student.create(first_name:"Greg", last_name: "Clinton", cohort: cohort),
    Student.create(first_name:"Jon", last_name: "Snow", cohort: cohort)
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
end


def no_phase
  cohort = Cohort.create(name: "No Phase Test", location: "San Diego")

  phases = []

  weeks = []

  j = 0
  groups = []
  # Number based on number of weeks
  0.times do
    groups << Group.create(week: weeks[j])
    groups << Group.create(week: weeks[j])
    groups << Group.create(week: weeks[j])
    groups << Group.create(week: weeks[j])
    j += 1
  end

  students = [
    Student.create(first_name:"Ezra", last_name: "Chiang", cohort: cohort),
    Student.create(first_name:"Joe", last_name: "Bob", cohort: cohort),
    Student.create(first_name:"Bob", last_name: "Johnson", cohort: cohort),
    Student.create(first_name:"Kent", last_name: "Lu", cohort: cohort),
    Student.create(first_name:"Larry", last_name: "Lucas", cohort: cohort),
    Student.create(first_name:"Marven", last_name: "Gill", cohort: cohort),
    Student.create(first_name:"Hank", last_name: "Bova", cohort: cohort),
    Student.create(first_name:"Tony", last_name: "Yang", cohort: cohort),
    Student.create(first_name:"Hello", last_name: "Wang", cohort: cohort),
    Student.create(first_name:"Mary", last_name: "Wu", cohort: cohort),
    Student.create(first_name:"Maggie", last_name: "Xi", cohort: cohort),
    Student.create(first_name:"Kelly", last_name: "Stevens", cohort: cohort),
    Student.create(first_name:"Brianne", last_name: "Garfield", cohort: cohort),
    Student.create(first_name:"Levy", last_name: "Trump", cohort: cohort),
    Student.create(first_name:"Greg", last_name: "Clinton", cohort: cohort),
    Student.create(first_name:"Jon", last_name: "Snow", cohort: cohort)
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
end

full_cohort
one_phase
two_phase
no_phase
