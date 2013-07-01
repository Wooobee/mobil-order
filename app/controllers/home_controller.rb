class HomeController < ApplicationController
  def index
    @products = Product.all
  end
  
  def aktion
    @products = Product.all
  end
end
