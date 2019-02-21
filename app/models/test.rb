class Test < ApplicationRecord

  def self.select_by_category_title(category_title)
    joins('join categories on categories.id = tests.category_id')
    .where(categories: { title: category_title })
    .order(title: :desc)
    .pluck('tests.title')
  end

end
