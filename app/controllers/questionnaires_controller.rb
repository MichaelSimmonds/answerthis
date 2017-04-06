class QuestionnairesController < ApplicationController
  def index
    @questionnaires = Questionnaire.all
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
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

  def edit

  end

  def update
    @questionnaire.title = questionnaire_params[:title]
    @questionnaire.body = questionnaire_params[:body]
    @questionnaire.save!
    flash[:notice] = "Updated questionnaire"
    redirect_to new_questionnaire_question_path(@questionnaire.id)
  end

  def play
    @questionnaire = Questionnaire.first # should be the @random_questionnaire from the pages#home
    @prizes = Prize.where(questionnaire_id: @questionnaire.id)
    @questions = Question.where(questionnaire_id: @questionnaire.id)
  end

  private

  def questionnaire_params
    params.require(:questionnaire).permit(:title, :description, :profile_id)

  end
end
