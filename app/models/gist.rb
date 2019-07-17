class Gist < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :url, :question, :user, presence: true

end
