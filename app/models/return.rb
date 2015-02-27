class Return < ActiveRecord::Base
  has_many :return_questions
  has_many :questions, through: :return_questions

  validates :return_type, presence: true
  validates :difficulty_score, presence: true, on: :update
  validates :filer_experience, presence: true, on: :update
  validates_format_of :filer_email, with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, on: :update

  def self.score_determination(return_requested)
    @score = 0
    if return_requested.filer_experience == 'Slim to none'
      @score = 10
    elsif return_requested.filer_experience == 'Some experience'
      @score = 5
    else
      @score = 0
    end
    if return_requested.return_type == 'Individual'
      return_requested.questions.each do |question|
        @score = @score + question.score_value
      end
    else
      @score += 85
    end
    # without the below return statement the method returns an array of questions. Should address in the future.
    @score
  end

  def self.service_determination(score)
    if score < 20
      @service_determination = 'You can probably handle this yourself'
    elsif score < 50
      @service_determination = 'You probably need some help with your return'
    else
      @service_determination = 'You should probably see a CPA'
    end
  end

  def self.return_question_adder(return_questions, return_requested)
    if return_questions != nil
      return_questions.each do |return_question|
        if return_question != ''
          question = Question.find(return_question.to_i)
          assigned_question = ReturnQuestion.new(question_id: question.id, return_id: return_requested.id)
          assigned_question.save
        end
      end
    end
  end

end
