class Teacher < ApplicationRecord
  has_many :reviews, dependent: :destroy
end
