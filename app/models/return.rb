class Return < ActiveRecord::Base
  has_many :return_questions
  has_many :questions, through: :return_questions
end
