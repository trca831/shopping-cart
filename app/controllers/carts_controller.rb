class CartsController < ApplicationController
    def index
        @carts = Cart.all #commented it out to see if line 4 will work
        # @cart = Cart.find_by(id: session[:cart_id]) || Cart.new
    end

    def show
        @cart = Cart.find(params[:id])
        @cart_items = @cart.cart_items.includes(:product)
    end

    def new
        @cart = Cart.new
    end

    def create
       render plain: params.class
    end

end
