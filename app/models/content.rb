class Content < ApplicationRecord
  has_rich_text :description
  has_many_attached :file
  belongs_to :createclass
end
