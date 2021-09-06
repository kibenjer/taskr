class Task < ApplicationRecord
  validates :content, presence: true, length: {minimum: 4 , maximum: 300}

  belongs_to :user
end