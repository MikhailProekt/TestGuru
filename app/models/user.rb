class User < ApplicationRecord

#  has_and_belongs_to_many :tests
  has_many :tests_users
  has_many :tests, through: :tests_users
  has_many :created_tests, class_name: "Test", foreign_key: "author_id"

  def tests_by_level(level)
    Test.joins('join test_passages on test_passages.test_id = tests.id')
    .where(tests: { level: level }, test_passages: { user_id: id } )
  end

end
