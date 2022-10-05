class CustomProduct < ApplicationRecord
  belongs_to :product

  # can change to has_many for all fields
  has_one_attached :front

  # TODO: better way of validating colors 
  COLORS = %w[#ff0000 #0000ff #ffa500 #000000].freeze

  validates :color, inclusion: { in: COLORS }, presence: true
  validates :size, presence: true
  validates :quantity, presence: true 
end