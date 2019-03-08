class User < ApplicationRecord

  has_many :tests_users, dependent: :destroy
  has_many :tests, through: :tests_users
  has_many :created_tests, class_name: "Test", foreign_key: "author_id"

  validates :name, :email, presence: true
  validates :email, uniqueness: true

  def select_by_level(level)
    tests.select_by_level(level)
  end

end
