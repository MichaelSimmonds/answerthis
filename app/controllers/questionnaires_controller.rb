class QuestionnairesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @questionnaire = Questionnaire.new
  end

  def create
  end

  def play
    @questionnaire = Questionnaire.first
    @prizes = Prize.where(questionnaire_id: @questionnaire.id)
    @questions = Question.where(questionnaire_id: @questionnaire.id)
  end
end
