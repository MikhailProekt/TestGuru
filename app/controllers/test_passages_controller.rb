class TestPassagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_test_passage, only: %i[show update result gist]

  def show; end

  def result; end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed?
      #TestsMailer.completed_test(@test_passage).deliver_now
      current_user.badges << BadgeService.new(@test_passage).try_get_badge
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  def gist
    question = @test_passage.current_question
    result = GistQuestionService.new(question).call

    if result.success?
#      current_user.gists.create!(question_id: question.id, url: result.html_url)
      Gist.create(url: result.html_url, question: @test_passage.current_question, user: current_user)
      flash[:notice] = t('.success', link_to: result.html_url)
    else
      flash[:alert] = t('.failure')
    end

    redirect_to @test_passage
  end

  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end

end
