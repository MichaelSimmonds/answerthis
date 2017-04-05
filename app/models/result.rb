class Result < ApplicationRecord
  belongs_to :profile
  belongs_to :questionnaire
  belongs_to :prize 
end
