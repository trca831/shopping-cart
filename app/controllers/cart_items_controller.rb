class CartItemsController < ApplicationController
    before_action :set_cart, only: [:new, :create]
  
    def index
      @cart_items = CartItem.all
    end
  
    def show
    end
  
    def new
      @cart_item = @cart.cart_items.new
    end

    def edit
    end
  
    def create
      @cart_item = @cart.cart_items.new(cart_items_params)
      if @cart_item.save
        redirect_to cart_path(@cart), notice: 'Item was successfully added to the cart.'
      else
        render :new
      end
    end

    def destroy 
      @cart_item.destroy
      respond_to do |format|
          format.html { redirect_to carts_url, notice: "Order was successfully destroyed"}
          format.json { head :no_content }
  end
end
  
    private
  
    # Finds the cart based on the cart_id passed in the URL
    def set_cart
      @cart = Cart.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def cart_items_params
      params.require(:cart_item).permit(:name, :price, :amount)
    end
  end
