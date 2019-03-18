class QuestionsController < ApplicationController

  before_action :find_test, only: %i[index create new]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def new

  end

  def index
    render inline: '<p>Questions:<br><%= @test.questions.pluck(:body) %></p>'
  end

  def create
    question = Question.create(question_params)
    render plain: "Question was created: " + question.inspect
  end

  def show
    @question = Question.find(params[:id])
    render inline: '<p>Question:<br><%= @question.body %></p>'
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    render inline: '<p>Question <%= @question.id %> was deleted</p>'
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def question_params
    params.require(:question).permit(:body, :test_id)
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end

end
