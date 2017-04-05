class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: :home


  def home
    # @questionnaire = Questionaire.first # a Questionaire which the user has not yet taken
  end
end
