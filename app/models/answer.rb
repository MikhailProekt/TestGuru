class Answer < ApplicationRecord
  belongs_to :question

  validates :body_answer, presence: true
#  validates :validate_max_number, on: :create
  validate :validate_answers_count, on: :create

  scope :correct, -> { where(correct: true) }

  private

#  def validate_max_number
#    if question.answers.count >= 4
#      errors.add(:number, "You can not have more than 4 answers")
#    end
#  end

  def validate_answers_count
    errors.add(:answers) if question.answers.count == 4
  end

end
