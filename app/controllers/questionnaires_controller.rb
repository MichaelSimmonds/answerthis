class QuestionnairesController < ApplicationController
  def index
    @questionnaires = Questionnaire.all
  end

  def show
  end

  def new
    @questionnaire = Questionnaire.new
  end

  def create
    @questionnaire = Questionnaire.new(questionnaire_params)
    @questionnaire.profile_id = current_profile.id
    @questionnaire.save
    redirect_to new_questionnaire_question_path(@questionnaire.id)
  end

  def play
    @questionnaire = Questionnaire.first
    @prizes = Prize.where(questionnaire_id: @questionnaire.id)
    @questions = Question.where(questionnaire_id: @questionnaire.id)

  private

  def questionnaire_params
    params.require(:questionnaire).permit(:title, :description)

  end
end
