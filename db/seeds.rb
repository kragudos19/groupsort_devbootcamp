# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cohort.create(name: "Salamanders", location: "San Diego")
Phase.create(phase_num: 3, cohort_id: 1)
Week.create(phase_id: 1, week_number: 8)
Student.create(first_name:"Ezra", last_name: "Chiang", cohort_id: 1)
StudentWeek.create(student_id: 1, week_id: 1)
