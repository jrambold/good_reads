class Book < ApplicationRecord
  validates :title, presence: true
  has_many :reviews

  def average
    reviews.average(:rating)
  end
end
