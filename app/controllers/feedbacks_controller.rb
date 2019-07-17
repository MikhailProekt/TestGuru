class FeedbacksController < ApplicationController
  respond_to :html, notice: "Feedback sent!"

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.deliver
    respond_with @feedback do |format|
      format.html {redirect_to root_path, notice: "Feedback sent!"}
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:title, :body, :email)
  end

end
