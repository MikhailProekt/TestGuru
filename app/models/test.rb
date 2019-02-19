class Test < ApplicationRecord

  scope :select_by_level, ->(level) { where(level: level) }

  scope :select_by_category, -> (category_title) {
    joins(:category)
      .where(categories: { title: category_title })
      .order(title: :desc) }

  def self.select_by_category_title(category_title)
    Test.select_by_category(category_title).pluck(:title)
  end

end
