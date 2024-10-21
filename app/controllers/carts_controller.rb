class CartsController < ApplicationController
    before_action :set_cart, only: [:edit, :update, :destroy]

    #READ
    def index
        @carts = Cart.all #commented it out to see if line 4 will work
        # @cart = Cart.find_by(id: session[:cart_id]) || Cart.new
    end

    #READ
    def show
        @cart = Cart.find(params[:id])
        @cart_items = @cart.cart_items.includes(:product)
    end

    #CREATE
    def new
        @cart = Cart.new
    end

    #CREATE
    def create
        @cart = Cart.new(cart_params)
        # debugger
        if @cart.save
          redirect_to @cart, notice: 'Cart was successfully created.'
        else
          render :new, status: :unprocessable_entity
        end
      end

      #UPDATE
    def edit
        # @cart is assigned by the set_cart method
      end

      def update
        respond_to do |format|
          if @cart.update(cart_params)
            format.html { redirect_to cart_url(@cart), notice: "Item was successfully updated." }
            format.json { render :show, status: :ok, location: @cart }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @cart.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE: Remove a specific cart
  def destroy
    @cart.destroy
    redirect_to carts_path, notice: 'Cart was successfully deleted.'
  end
    
private

      def set_cart
        @cart = Cart.find_by(id: params[:id])
        if @cart.nil?
          redirect_to carts_path, alert: "Cart not found."
        end
      end

      def cart_params
        params.require(:cart).permit(:name, :price, :amount)
      end

end
