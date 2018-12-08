class ProductsController < ApplicationController
    before_action :get_cart

    def index

    end

    def add
        product = params[:product]
        @cart << product
        redirect_to root_path
    end

    private

    def get_cart
       @cart = cart
    end
end
