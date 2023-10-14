class Review < ApplicationRecord
  belongs_to :airline_demo
  validates :title, presence: true
end
