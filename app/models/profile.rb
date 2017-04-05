class Profile < ApplicationRecord
  belongs_to :user
  has_many :questionnaires
  has_many :responses
  has_many :answers, through: :responses
  has_many :results

end
