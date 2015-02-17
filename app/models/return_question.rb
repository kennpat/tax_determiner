class ReturnQuestion < ActiveRecord::Base
  belongs_to :return
  belongs_to :question

  validates_uniqueness_of :return_id, scope: :question_id
end
