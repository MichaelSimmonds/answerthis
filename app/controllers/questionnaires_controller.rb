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
    @questionnaire.save!
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
    @questions = Question.where(questionnaire_id: @questionnaire.id)
  end

  def edit
  end


  def update

  end

  # def choose_prize
    # @questionnaire = Questionnaire.find(params[:questionnaire_id])
    # @result = Result.find(params[:result_id])
    # @prizes = Prize.where(questionnaire_id: @questionnaire.id)
  # end

  # def completed_questionnaires
  #   # code to generate a random questionnaire
  #   redirect_to random_questionnaire_path
  # end

  def random_questionnaire_for_user

    @questionnaire = Questionnaire.find(1)
    redirect_to new_questionnaire_result_path(@questionnaire.id)



    # Uncompleted logic to generate random questionnaire

    # @profileresults = Result.where(profile_id: current_profile.id, status: !0)
    # @completed_questionnaire_ids = []
    # @profileresults.each do |result|
    #   @completed_questionnaire_id = result.questionnaire_id
    #   @completed_questionnaire_ids << @completed_questionnaire_id
    # end
    # @random_completed_questionnaire_id = @completed_questionnaire_ids.sample
    # @uncompleted_questionnaire_id = Question.find_by id: !@random_completed_questionnaire_id
    # @questionnaire = Questionnaire.find(@uncompleted_questionnaire_id)

  end

  private

# POSSIBLE set_questonnaire/set_result METHOD

  def questionnaire_params
    params.require(:questionnaire).permit(:title, :description, :profile_id)

  end
end
