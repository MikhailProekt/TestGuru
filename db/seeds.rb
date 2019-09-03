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

user = User.create!(email: 'MP@yandex.ru', 
                    password: '123456',
                    first_name: 'Mikhail',
                    last_name: 'Proekt', 
                    confirmed_at: Time.now)

admin = Admin.create!(email: 'MP8@yandex.ru',
                      password: '123456',
                      first_name: 'Mikhail',
                      last_name: 'Proekt',
                      confirmed_at: Time.now)

tests = Test.create!([
  { title: 'Ruby_1',
    level: 1,
    category_id: categories[1].id,
    author_id: user.id },
  { title: 'HTML',
    level: 2,
    category_id: categories[0].id,
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

Badge.create!(title: 'For first successfull try',
              url: 'https://image.flaticon.com/icons/png/128/1579/1579494.png',
              rule_name: 'success_first_try',
              rule_value: '')

Badge.create!(title: 'For first level tests',
              url: 'https://image.flaticon.com/icons/png/128/1579/1579498.png',
              rule_name: 'level',
              rule_value: '1')

Badge.create!(title: 'For successfull backend tests',
              url: 'https://image.flaticon.com/icons/png/128/1579/1579499.png',
              rule_name: 'category',
              rule_value: 'Backend')
