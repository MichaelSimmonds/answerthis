class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home


  def home
    if params[:first_time]
      @welcome_message1 = "Hi"
      @welcome_message2 = ", nice to meet you!"
    else
      @welcome_message1 = "Welcome back"
      @welcome_message2 = ", happy to see you again!"
    end
  end
end
