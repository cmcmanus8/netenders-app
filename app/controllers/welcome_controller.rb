class WelcomeController < ApplicationController
  def index
    @product = Product.first
  end
end
