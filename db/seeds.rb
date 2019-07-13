# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create!(
  [
    { title: 'Frontend' }, 
    { title: 'Backend' }, 
    { title: 'Mobile Development' }
  ]
  )

user = User.create!(email: 'MProekt8@mail.ru', 
                    password: '123456',
                    first_name: 'Mikhail',
                    last_name: 'Proekt', 
                    confirmed_at: Time.now)

admin = Admin.create!(email: 'MP8@mail.ru',
                      password: '123456',
                      first_name: 'Mikhail',
                      last_name: 'Proekt',
                      confirmed_at: Time.now)

tests = Test.create!([
  { title: 'Ruby',
    level: 1,
    category_id: categories[1].id,
    author_id: user.id },
  { title: 'Ruby 1',
    level: 2,
    category_id: categories[1].id,
    author_id: user.id }
  ])

questions = Question.create!([
  { body: 'What programming language are you studying?',
    test_id: tests[0].id },
  { body: 'This programming language belongs to which category?',
    test_id: tests[0].id }
  ])

Answer.create!([
  { body_answer: 'Ruby', 
    correct: true,
    question_id: questions[0].id },
  { body_answer: 'PHP',
    correct: false,
    question_id: questions[0].id },
  { body_answer: 'Backend',
    correct: true,
    question_id: questions[1].id },
  { body_answer: 'Frontend',
    correct: false,
    question_id: questions[1].id }
  ])
