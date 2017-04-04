class Response < ApplicationRecord
  has_many :answers
  has_one :profile
end
