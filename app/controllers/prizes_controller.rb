class PrizesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @prize = Prize.new
  end

  def create
    @prize = Prize.new(prize_params)
    @prize.profile_id = current_profile.id
    @prize.save
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
