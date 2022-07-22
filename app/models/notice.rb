class Notice < ApplicationRecord
  has_many_attached :file
  belongs_to :createclass
  has_rich_text :massege

  
end
