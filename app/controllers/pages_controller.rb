class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home


  def home
    # @questionnaire = Questionnaire.first # a Questionnaire which the user has not yet taken
  end
end
