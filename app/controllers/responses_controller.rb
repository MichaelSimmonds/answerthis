class ResponsesController < ApplicationController
  def index
  end

  def show
  end

  def intro
    @questionnaire = Question.find(params[:question_id]).questionnaire
    @question = Question.find(params[:question_id])
    session[:original_position] = @questionnaire.questions.length + params[:question_id].to_i

  end

  def new
    @questionnaire = Question.find(params[:question_id]).questionnaire
    @response = Response.new
    @question = Question.find(params[:question_id])
    @answers = Answer.where("question_id = #{@question.id}")
  end

  def create
    @response = Response.new
    @response.answer_id = params[:response][:response]
    @response.profile_id = current_profile.id
    @response.save!
    @questionnaire = Questionnaire.find(params[:questionnaire_id]).questions
    the_next = params[:question_id]
    the_next = the_next.to_i + 1

    if the_next < session[:original_position]
      the_next = the_next.to_s
      redirect_to new_questionnaire_question_response_path(params[:questionnaire_id], the_next)
    else
      @questionnaire = @response.answer.question.questionnaire
      @profile = current_profile
      @result = Result.where("questionnaire_id = #{@questionnaire.id} AND profile_id = #{@profile.id}")
      redirect_to edit_questionnaire_result_path(questionnaire_id: @questionnaire.id.to_s, id: @result[-1].id.to_s)
    end
  end

    def response_params
      params.require(:response).permit(:response, :answer_id)
    end


end
