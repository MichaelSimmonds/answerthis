class Response < ApplicationRecord
  belongs_to :profile
  belongs_to :answer
  has_one :questionnaire

end
