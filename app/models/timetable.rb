class Timetable < ApplicationRecord
  has_many_attached :file
  belongs_to :createclass
end
