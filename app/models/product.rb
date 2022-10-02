class Product < ApplicationRecord
  has_many :custom_products
  monetize :price_in_cents, as: "price"

  def size_range
    "#{sizes[0]} - #{sizes[-1]}".upcase
  end

  # def colors_available
  #   colors.each do |color|
  #     content_tag(:div, style: "background-color: #{color_mappings[color]}, border-radius: 50%")
  #   end
  # end
#{@product.color_mappings[color]}
  def color_mappings
    {
      'red' => '#ff0000',
      'blue' => '#0000ff',
      'orange' => '#ffa500',
      'black' => '#000000'
    }
  end
end
