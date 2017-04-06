class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home


  def home
    @random_questionnaire = Questionnaire.first # should be a random Questionnaire which the user has not yet taken
  end
end
