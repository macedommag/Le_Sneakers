class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def create
    @sneaker = Sneaker.find(params[:sneaker_id])
    @order = Order.new(sneaker: @sneaker, user: current_user)
    @order.save
    redirect_to order_path(@order)
  end
end
