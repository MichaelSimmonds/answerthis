class QuestionnairesController < ApplicationController
  def index
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
    @prizes = Prize.where(questionnaire_id: @questionnaire.id)
  end

  def new
    @questionnaire = Questionnaire.new
  end

  def create
  end

  def client_show
  end
end
