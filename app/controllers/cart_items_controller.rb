class CartItemsController < ApplicationController


    def new
        @cart = params[:cart] 
        @cart_item = CartItem.new
    end

    
end
