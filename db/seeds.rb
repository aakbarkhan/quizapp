# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Teacher.create(name: 'Roland', email: 'roland@gamil.com', password: '123456', role: 'Teacher', school: 'TTUS' )

Teacher.create(name: 'Aku', email: 'aku@gamil.com', password: '123456', role: 'Teacher', school: 'NewSchool' )

Student.create(name: 'Tom', email: 'tom@gamil.com', password: '123456', role: 'Student', school: 'TTUS', dob: '12/09/2000' )

Student.create(name: 'Jerry', email: 'jerry@gamil.com', password: '123456', role: 'Student', school: 'Tom School', dob: '12/09/2000' )

Student.create(name: 'Mi', email: 'mi@gamil.com', password: '123456', role: 'Student', school: 'Tom School', dob: '12/09/2000' )


Quiz.create(title: 'Binary number', subject: 'Math', chapter: 'Number system')


Quiz.create(title: 'Leaves', subject: 'Science', chapter: 'Plants' )