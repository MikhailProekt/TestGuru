class FeedbacksMailer < ApplicationMailer

  default to: ENV['EMAIL_FOR_FEEDBACKS']

  # Title can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedbacks_mailer.feedback.title
  #

  def feedback(feedback_attr)
    @message  = feedback_attr.message
    @email    = feedback_attr.email
    @subject  = feedback_attr.subject

     mail  cc: @email,
          subject: t(".subject_prefix") + ":  #{@subject}",
          body: feedback_attr.message
  end

end
