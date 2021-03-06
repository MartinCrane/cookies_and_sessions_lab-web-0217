require "pry"

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def cart
    session[:cart] ||= []
  end

  def cart_add
  
    @cart = cart
    if !params[:product].nil?
      @cart << params[:product]
    end
  end
end
