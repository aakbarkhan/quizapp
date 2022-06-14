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


Quiz.create(title: 'Binary number', subject: 'Math', chapter: 'Number system', teacher_id: 1)
Quiz.create(title: 'History', subject: 'Math', chapter: 'World Hostory', teacher_id: 1)
Quiz.create(title: 'History', subject: 'Math', chapter: 'Idian Hostory', teacher_id: 1)

Quiz.create(title: 'Leaves', subject: 'Science', chapter: 'Plants', teacher_id: 2 )

Question.create(question: 'what is your name?', option_1: 'tom', option_2: 'Jerry', option_3: 'Tin', option_4: 'Zachee', answer: 'Zachee', right: true, count: 1, quiz_id: 1, teacher_id: 1)

Question.create(question: 'what is your pet name?', option_1: 'tom', option_2: 'Jerry', option_3: 'Tin', option_4: 'Zachee', answer: 'tom', right: true, count: 1, quiz_id: 1, teacher_id: 1)

Question.create(question: 'what is favourte color?', option_1: 'green', option_2: 'Jerry', option_3: 'white', option_4: 'red', answer: 'white', right: true, count: 1, quiz_id: 2, teacher_id: 2)