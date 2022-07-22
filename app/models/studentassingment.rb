class Studentassingment < ApplicationRecord
  belongs_to :assingment  
  has_many_attached :file

end
