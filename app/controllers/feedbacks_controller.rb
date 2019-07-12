class FeedbacksController < ApplicationController

  # GET /feedback
  def new
    @feedback = Feedback.new(
      name: current_user.first_name,
      email: current_user.email
    )
  end

  # POST /feedback
  def create
    @feedback = Feedback.new(feedback_params)

      if @feedback.valid?
      FeedbacksMailer.feedback(@feedback).deliver_now
      render :success
      else
        render :new
      end
  end

  private

  # Never trust parameters from the internet, only allow the white list through.
  def feedback_params
    params.require(:feedback).permit(:name, :email, :subject, :message)
  end

end
