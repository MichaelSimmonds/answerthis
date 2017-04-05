class QuestionnairesController < ApplicationController
  def index
  end

  def show
    @questionnaire = Questionnaire.first
    @prizes = Prize.where(questionnaire_id: @questionnaire.id)
    @questions = Question.where(questionnaire_id: @questionnaire.id)
    @answers = Answer.all
  end

  def new
    @questionnaire = Questionnaire.new
  end

  def create
  end

  def client_show
  end
end
