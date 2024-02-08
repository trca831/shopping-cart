class CartController < ApplicationController
    def index
        @carts = Cart.all
    end

    def show
        @cart = Cart.find(params[:id])
    end

    def new
        @cart = Cart.new
    end

    def create
       
       render plain: params.class
    end
end
