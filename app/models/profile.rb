class Profile < ApplicationRecord
  belongs_to :teacher 
  mount_uploader :image, FileUploader
end
