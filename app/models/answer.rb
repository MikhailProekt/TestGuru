class Answer < ApplicationRecord

  MAX_ANSWERS_BY_QUESTION = 4
  ANSWER_LIMIT_ERROR_MESSAGE = "Лимит ответов на один вопрос: #{MAX_ANSWERS_BY_QUESTION}".freeze

  belongs_to :question

  validates :body_answer, presence: true
#  validates :validate_max_number, on: :create
#  validate :validate_answers_count, on: :create
  validate :validate_answers_limit_for_question, on: :create

  scope :correct, -> { where(correct: true) }

  private

#  def validate_max_number
#    if question.answers.count >= 4
#      errors.add(:number, "You can not have more than 4 answers")
#    end
#  end

#  def validate_answers_count
#    return if question.answers.count < 4
#    errors.add(:answers) if question.answers.count == 4
#  end

  def validate_answers_limit_for_question
    return if question.answers.count < MAX_ANSWERS_BY_QUESTION

    errors.add(:base, ANSWER_LIMIT_ERROR_MESSAGE)
  end

end
