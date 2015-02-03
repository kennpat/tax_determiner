class ReturnQuestion < ActiveRecord::Base
  belongs_to :return
  belongs_to :question
end
