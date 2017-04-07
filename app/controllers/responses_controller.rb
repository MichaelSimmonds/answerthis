class ResponsesController < ApplicationController
  def index
  end

  def show
  end

  def intro
    @questionnaire = Question.find(params[:question_id]).questionnaire
  end

  def new
    # @answers = Answer.find(params[:answer_id])
    @question = Question.find(params[:question_id])
    @answers = Question.all.where(id:@question.id)
  end

  def create
  end
end
