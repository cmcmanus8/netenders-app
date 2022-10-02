class CustomProductsController < ApplicationController
  before_action :set_custom_product, only: %i[ show edit update destroy ]

  # GET /custom_products or /custom_products.json
  def index
    @custom_products = CustomProduct.all
  end

  # GET /custom_products/1 or /custom_products/1.json
  def show
  end

  # GET /custom_products/new
  def new
    @custom_product = CustomProduct.new
  end

  # GET /custom_products/1/edit
  def edit
  end

  # POST /custom_products or /custom_products.json
  def create
    @custom_product = CustomProduct.new(custom_product_params)

    respond_to do |format|
      if @custom_product.save
        format.html { redirect_to custom_product_url(@custom_product), notice: "Custom product was successfully created." }
        format.json { render :show, status: :created, location: @custom_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @custom_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_products/1 or /custom_products/1.json
  def update
    respond_to do |format|
      if @custom_product.update(custom_product_params)
        format.html { redirect_to custom_product_url(@custom_product), notice: "Custom product was successfully updated." }
        format.json { render :show, status: :ok, location: @custom_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @custom_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_products/1 or /custom_products/1.json
  def destroy
    @custom_product.destroy

    respond_to do |format|
      format.html { redirect_to custom_products_url, notice: "Custom product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_product
      @custom_product = CustomProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custom_product_params
      params.require(:custom_product).permit(:right_sleeve, :left_sleeve, :front, :back, :quantity, :size, :color, :product_id)
    end
end
