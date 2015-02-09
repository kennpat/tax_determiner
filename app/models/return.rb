class Return < ActiveRecord::Base
  has_many :return_questions
  has_many :questions, through: :return_questions

  validates :return_type, presence: true
  validates :difficulty_score, presence: true, on: :update
  validates :filer_experience, presence: true, on: :update
  # not working at this time
  validates_format_of :filer_email, with: /@/, on: :update
end
