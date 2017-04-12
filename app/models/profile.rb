class Profile < ApplicationRecord
  belongs_to :user
  has_many :questionnaires
  has_many :responses
  has_many :answers, through: :responses
  has_many :results

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :dob, presence: true
  validates :gender, presence: true

  #this is for activeAdmin
  def name
    self.user.email
  end
end
