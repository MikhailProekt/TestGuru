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

user = User.create!(name: 'Mikhail', email: 'Mikhail@mail.ru')

tests = Test.create!([
  { title: 'Ruby',
    level: 1,
    category_id: categories[1].id,
    user_id: user.id },
  { title: 'Ruby 1',
    level: 2,
    category_id: categories[1].id,
    user_id: user.id }
  ])

question1 = Question.create!(
  body: 'What programming language are you studying?', 
  test_id: tests[0].id
  )

question2 = Question.create!(
  body: 'This programming language belongs to which category?', 
  test_id: tests[0].id
  )

Answer.create!(
  body_answer: 'Ruby', 
  correct: 1, 
  question_id: question1.id
  )

Answer.create!(
  body_answer: 'PHP', 
  correct: 0, 
  question_id: question1.id
  )

Answer.create!(
  body_answer: 'Backend', 
  correct: 1, 
  question_id: question2.id
  )

Answer.create!(
  body_answer: 'Frontend', 
  correct: 0, 
  question_id: question2.id
  )
