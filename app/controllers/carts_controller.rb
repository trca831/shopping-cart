class CartsController < ApplicationController
    def index
        @carts = Cart.all
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
