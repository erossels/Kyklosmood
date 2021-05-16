class HomeController < ApplicationController
  def index
    @questions = Question.all
  end

  def thanks
    @answer = Answer.new
    @answer.choice = params[:value]
    @answer.question_id = Question.all.last.id
    @answer.save
  end
end
