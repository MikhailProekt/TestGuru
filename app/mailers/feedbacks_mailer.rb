class FeedbacksMailer < ApplicationMailer

  def feedback(title, body, user)
    mail(
      #to: Admin.first.email,
      to: 'proect24@gmail.com',
      subject: "Feedback from #{user} with title: #{title}",
      body: body
    )
  end
end
