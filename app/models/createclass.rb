class Createclass < ApplicationRecord
  belongs_to :teacher 
  has_and_belongs_to_many :students
  
  has_many :assingments
  has_many :contents
  has_many :syllabuses
  has_many :timetables
  has_many :notices
  has_many :quizzes
  #has_many :assingments, through: :studentassingments
end
