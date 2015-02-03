class Question < ActiveRecord::Base
  has_many :return_questions
  has_many :returns, through: :return_questions
end
