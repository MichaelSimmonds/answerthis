
class Questionnaire < ApplicationRecord
  belongs_to :profile
  has_many :profiles, through: :results
  has_many :prizes, through: :prize_pools
  has_many :questions
  has_many :answers, through: :questions


end
