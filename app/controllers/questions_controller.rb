class QuestionsController < ApplicationController
  def index

    @questionnaire = Questionnaire.find(params[:questionnaire_id])
  end

  def new
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @question = Question.new
    
  end

  def create
    @question = Question.new(question_params)
    @question.questionnaire_id = params[:questionnaire_id]
    @question.save!
    redirect_to new_question_answer_path(@question.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end
