class CartItemsController < ApplicationController
 
  def create
   product = Product.find(params[:product_id])  
   session[:cart] ||= [] 
   session[:cart] << product.name

    respond_to do |format| 
      if session[:cart].include? product.name
        format.html { redirect_to cart_items_path, notice: "Product added to cart." }
      else
        format.html { render :new }
      end
    end
  end

end
