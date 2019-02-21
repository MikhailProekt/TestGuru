class User < ApplicationRecord

  def tests_by_level(level)
    User.joins('join test_passages on test_passages.user_id = users.id and 
    join tests on tests.id = test_passages.test_id')
    .where(tests: { level: level })
    .pluck('tests.title')
  end

end
