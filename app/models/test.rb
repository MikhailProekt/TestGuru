class Test < ApplicationRecord

  scope :select_by_level, ->(level) { where(level: level) }

  def self.select_by_category_title(category_title)
    Test.joins('join categories on categories.id = tests.category_id')
    .where(categories: { title: category_title })
    .order(title: :DESC)
    .pluck('tests.title')
  end

end
