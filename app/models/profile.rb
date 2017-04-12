class Profile < ApplicationRecord
  belongs_to :user
  has_many :questionnaires
  has_many :responses
  has_many :answers, through: :responses
  has_many :results

  #this is for activeAdmin
  def name
    self.user.email
  end
end
