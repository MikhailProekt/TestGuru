class TestsController < ApplicationController

  def index
    render html: '<h1>All tests</h1>'.html_safe
  end

  def show
    render plain: 'Show tests'
  end

  private

  def find_test
    @test = Test.find(params[:id])
  end

end
