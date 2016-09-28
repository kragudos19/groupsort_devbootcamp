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

def test_cohort
  cohort = Cohort.create(name: "Salamanders", location: "San Diego")

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

  phases = [
    Phase.create(phase_num: 1, cohort: cohort),
    Phase.create(phase_num: 2, cohort: cohort),
    Phase.create(phase_num: 3, cohort: cohort)
  ]

  phases.each do |phase|
    phase.new_weeks_and_groups(cohort)
  end

  phases.each do |phase|
    phase.groups.each do |group|
      combos = group.students.to_a.combination(2)
      combos.each do |combo|
        combo[0].student_worked_withs << combo[1]
        combo[1].student_worked_withs << combo[0]
      end
    end
  end
end

def full_cohort
  cohort = Cohort.create(name: "Salamanders", location: "San Diego")

  phases = [
    Phase.create(phase_num: 1, cohort: cohort),
    Phase.create(phase_num: 2, cohort: cohort),
    Phase.create(phase_num: 3, cohort: cohort)
  ]

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

  phases.each do |phase|
    phase.new_weeks_and_groups(cohort)
  end

  phases.each do |phase|
    phase.groups.each do |group|
      combos = group.students.to_a.combination(2)
      combos.each do |combo|
        combo[0].student_worked_withs << combo[1]
        combo[1].student_worked_withs << combo[0]
      end
    end
  end
end

def two_phase
  cohort = Cohort.create(name: "Two Phases Test", location: "San Diego")

  phases = [
    Phase.create(phase_num: 1, cohort: cohort),
    Phase.create(phase_num: 2, cohort: cohort),
  ]

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

  phases.each do |phase|
    phase.new_weeks_and_groups(cohort)
  end

  phases.each do |phase|
    phase.groups.each do |group|
      combos = group.students.to_a.combination(2)
      combos.each do |combo|
        combo[0].student_worked_withs << combo[1]
        combo[1].student_worked_withs << combo[0]
      end
    end
  end
end

def one_phase
  cohort = Cohort.create!(name: "One Phase Test", location: "San Diego")

  phases = [
    Phase.create!(phase_num: 1, cohort: cohort)
  ]

  students = [
    Student.create!(first_name:"Ezra", last_name: "Chiang", cohort: cohort),
    Student.create!(first_name:"Joe", last_name: "Bob", cohort: cohort),
    Student.create!(first_name:"Bob", last_name: "Johnson", cohort: cohort),
    Student.create!(first_name:"Kent", last_name: "Lu", cohort: cohort),
    Student.create!(first_name:"Larry", last_name: "Lucas", cohort: cohort),
    Student.create!(first_name:"Marven", last_name: "Gill", cohort: cohort),
    Student.create!(first_name:"Hank", last_name: "Bova", cohort: cohort),
    Student.create!(first_name:"Tony", last_name: "Yang", cohort: cohort),
    Student.create!(first_name:"Hello", last_name: "Wang", cohort: cohort),
    Student.create!(first_name:"Mary", last_name: "Wu", cohort: cohort),
    Student.create!(first_name:"Maggie", last_name: "Xi", cohort: cohort),
    Student.create!(first_name:"Kelly", last_name: "Stevens", cohort: cohort),
    Student.create!(first_name:"Brianne", last_name: "Garfield", cohort: cohort),
    Student.create!(first_name:"Levy", last_name: "Trump", cohort: cohort),
    Student.create!(first_name:"Greg", last_name: "Clinton", cohort: cohort),
    Student.create!(first_name:"Jon", last_name: "Snow", cohort: cohort)
  ]

  phases.each do |phase|
    phase.new_weeks_and_groups(cohort)
  end

  phases.each do |phase|
    phase.groups.each do |group|
      combos = group.students.to_a.combination(2)
      combos.each do |combo|
        combo[0].student_worked_withs << combo[1]
        combo[1].student_worked_withs << combo[0]
      end
    end
  end
end


def no_phase
  cohort = Cohort.create(name: "No Phase Test", location: "San Diego")

  phases = []

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

  phases.each do |phase|
    phase.new_weeks_and_groups(cohort)
  end

  phases.each do |phase|
    phase.groups.each do |group|
      combos = group.students.to_a.combination(2)
      combos.each do |combo|
        combo[0].student_worked_withs << combo[1]
        combo[1].student_worked_withs << combo[0]
      end
    end
  end
end

# test_cohort
full_cohort
one_phase
two_phase
no_phase
