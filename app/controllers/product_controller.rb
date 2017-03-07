
class ProductController < ApplicationController
  # Prevent CSRF attacks by raising an exception.


  def index
    @cart = cart
  end
end
