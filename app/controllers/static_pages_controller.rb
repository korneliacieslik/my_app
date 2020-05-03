class StaticPagesController < ApplicationController
  def home
    @product = Product.all
  end

  def contact
  end

  def opinions
  end 
end
