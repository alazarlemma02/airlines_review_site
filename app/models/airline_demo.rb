class AirlineDemo < ApplicationRecord
  has_many :reviews
  validates :name, presence: true

  before_create :slugify
  def slugify
    self.slug = name.parameterize
  end

  def average_score
    reviews.average(:score).round(2).to_f
  end
end
