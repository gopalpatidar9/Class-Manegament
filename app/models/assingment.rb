class Assingment < ApplicationRecord
 belongs_to :createclass 
 has_many :studentassingments
 has_many_attached :file
 has_rich_text :instruction
end
