class Studentprofile < ApplicationRecord
  belongs_to :student
  mount_uploader :image, FileUploader 
end
