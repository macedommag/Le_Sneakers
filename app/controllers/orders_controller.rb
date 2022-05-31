class OrdersController < ApplicationController
  def create
    @order = Order.new
    @order.user = current_user
    @order.sneaker = Sneaker.find(params[:sneaker_id])
    if @order.save
      redirect_to sneakers_path, alert: "Congratulation!!!"
    else
      render Sneaker.find(params[:sneaker_id]), alert: "We couldn't complete your order"
    end
  end


end
