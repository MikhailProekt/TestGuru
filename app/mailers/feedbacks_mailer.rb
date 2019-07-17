class FeedbacksMailer < ApplicationMailer
  default to: 'proect24@gmail.com',
          from: 'notification@testguru22805.com'

  def feedback(title, body, email)
    mail(
      subject: "Feedback from #{email} with title: #{title}",
      body: body
    )
  end

end
