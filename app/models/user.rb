class User < ApplicationRecord

  def tests_by_level(level)
    Test.joins('join test_passages on test_passages.test_id = tests.id')
    .where(tests: { level: level }, test_passages: { user_id: id } )
  end

end
