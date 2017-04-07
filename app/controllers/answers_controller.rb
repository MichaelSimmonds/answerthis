class AnswersController < ApplicationController
  before_action :set_question, only: [:new, :destroy, :create]

  def index
    # @questionnaire = Answer.find(params[:questionnaire_id]).question.questionnaire
    @answer = Answer.find(params[:answer_id])
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @question.answers.length > 4
  end

  def create
    answer = Answer.new(answer_params)
    answer.question = @question
    answer.save
    redirect_to new_question_answer_path(@question)
  end

  def edit
  end

  def update
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to new_question_answer_path(@question)
  end

  private

  def set_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:answer).permit(:body)
  end

end
