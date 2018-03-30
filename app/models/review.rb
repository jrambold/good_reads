class Review < ApplicationRecord
  validates :body, :rating, presence: true

  belongs_to :user, :book
end
