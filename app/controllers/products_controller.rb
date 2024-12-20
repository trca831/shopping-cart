class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  def home
    # Any logic you want to display on the home page can go here
    # For example, you might want to show all products:
    @products = Product.all
  end

  # GET /products or /products.json
  def index
    @products = Product.all
  end

  # GET /products/1 or /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    # @product.avatar.attach(params[:avatar])
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)
    # debugger
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        @product.avatar.attach(params[:avatar]) if params[:avatar].present?
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find_by(id: params[:id])
      unless @product
        redirect_to products_path, alert: "Product not found"
      end
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :price, :image, :amount, :avatar)
    end
end
