class Review < ApplicationRecord
  belongs_to :teacher
  validates :comment, length: { minimum: 20 }
end
