class OrdersController < ApplicationController

  def index
  end

  def create
    @sneaker = Sneaker.find(params[:sneaker_id])
    @order = Order.new(sneaker: @sneaker, user: current_user)
    @order.save
    redirect_to sneakers_path
  end

  def destroy
  end
end
