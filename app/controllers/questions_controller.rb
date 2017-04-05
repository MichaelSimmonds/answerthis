class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @question = Question.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
