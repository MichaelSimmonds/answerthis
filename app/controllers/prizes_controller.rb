class PrizesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
    @prize = Prize.new
    if @questionnaire.prizes.length > 4
      flash[:alert] = "You can only add 4 prizes"
      redirect_to questionnaire_path(params[:questionnaire_id])
    end
  end

  def create
    @prize = Prize.new(prize_params)
    @prize.questionnaire_id = params[:questionnaire_id]
    @prize.save!
    redirect_to questionnaire_path(@prize.questionnaire.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def prize_params
    params.require(:prize).permit(:title, :description, :image_url, :value, :quantity_remaining, :win_probability, :voucher_code, :questionnaire_id)
  end

end
