class User < ApplicationRecord

  def select_by_level(level)
    tests.select_by_level(level)
  end

end
