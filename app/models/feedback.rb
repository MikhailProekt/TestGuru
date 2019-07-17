class Feedback
  include ActiveModel::Model

  attr_accessor :title, :body, :email

  validates :title, :body, :email, presence: true

  def deliver
    FeedbacksMailer.feedback(@title, @body, @email).deliver_now if valid?
  end
end
