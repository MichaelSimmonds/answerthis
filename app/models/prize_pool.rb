class PrizePool < ApplicationRecord
  belongs_to :questionnaire
  belongs_to :prize
end
