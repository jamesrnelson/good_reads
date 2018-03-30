class Review < ApplicationRecord
  validates :body, presence: true
  validates :rating, presence: true

  belongs_to :user
  belongs_to :book

  def self.average_rating
    average(:rating)
  end

  def self.highest_rating
    order('rating DESC').first.rating
  end

  def self.lowest_rating
    order('rating').first.rating
  end
end
