class UserAnswer < ApplicationRecord
  belongs_to :question
  belongs_to :option
end
