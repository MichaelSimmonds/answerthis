class ResultsController < ApplicationController
  def index
  end

  def new
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @result = Result.new(questionnaire_id: @questionnaire.id, profile_id: current_profile.id)
    @prizes = Prize.where(questionnaire_id: @questionnaire.id)
    # redirect_to questionnaire_results_path(@questionnaire.id)
  end

  def create
    # @result = Result.new(questionnaire_id: params[:questionnaire_id])
    @result = Result.find(params[:result_id])
    @result.prize_id = prize_params
    @result.save!
    # redirect_to play_path(params[:questionnaire_id])
  end

  def edit
    # @questionnaire = Questionnaire.find(params[:questionnaire_id])
    # @result = Result.find(params[:id])
    # @result.prize_id = result_params.prize_id
    # POTENTIALLY USEFUL COMMENT: edit_questionnaire_result_path(@questionnaire.id, @result.id)
  end

  def update
    # @result = Result.find(params[:id])
    # @result.prize_id = params[:prize_id]
    # @result.save!
  end

  private

  def prize_params
    params.require(:questionnaire).permit(:prize_id)
  end
end
