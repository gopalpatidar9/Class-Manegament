class Quiz < ApplicationRecord
  belongs_to :createclass
  has_many :questions
end
