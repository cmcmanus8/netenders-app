class CustomProduct < ApplicationRecord
  belongs_to :product

  COLORS = %w[Red Blue Orange Black].freeze

  validates :color, inclusion: { in: COLORS }, presence: true
  validates :size, presence: true
  validates :quantity, presence: true 
end
