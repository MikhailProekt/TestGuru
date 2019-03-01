class Test < ApplicationRecord

  has_many :questions, dependent: :destroy
#  has_and_belongs_to_many :users
  has_many :tests_users, dependent: :destroy
  has_many :users, through: :tests_users
  belongs_to :category
  belongs_to :author, class_name: "User", foreign_key: :author_id

  def self.select_by_category_title(category_title)
    .where(categories: { title: category_title })
    .order(title: :desc)
    .pluck(:title)
  end

end
