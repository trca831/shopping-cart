class CartItemsController < ApplicationController
  before_action :set_cart, only: [:new, :create]
  before_action :set_cart_item, only: [:show, :edit, :update, :destroy]

  # READ: Display all cart items
  def index
    @cart_items = CartItem.all
  end

  # READ: Show a specific cart item
  def show; end

  # CREATE: New cart item form
  def new
    @cart_item = @cart.cart_items.new
  end

  # CREATE: Add a new cart item to the cart
  def create
    @cart_item = @cart.cart_items.new(cart_items_params)
    if @cart_item.save
      redirect_to cart_path(@cart), notice: 'Item was successfully added to the cart.'
    else
      render :new
    end
  end

  # UPDATE: Edit a specific cart item
  def edit; end

  # UPDATE: Apply updates to a specific cart item
  def update
    if @cart_item.update(cart_items_params)
      redirect_to cart_item_path(@cart_item), notice: 'Item was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE: Remove a cart item from the cart
  def destroy
    @cart_item.destroy
    respond_to do |format|
      format.html { redirect_to carts_url, notice: 'Item was successfully removed from the cart.' }
      format.json { head :no_content }
    end
  end

  private

  # Set the cart based on cart_id in the URL
  def set_cart
    @cart = Cart.find(params[:cart_id])
  end

  # Set the specific cart item
  def set_cart_item
    @cart_item = CartItem.find(params[:id])
  end

  # Only allow trusted parameters
  def cart_items_params
    params.require(:cart_item).permit(:name, :price, :amount)
  end
end
