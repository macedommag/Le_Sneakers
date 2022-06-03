class SneakersController < ApplicationController
  before_action :set_sneaker, only: [:show, :edit, :destroy]

  def index
    sneakers = Sneaker.all

    @sneakers = Sneaker.includes(:orders).where(orders: { sneaker_id: nil })

    if params[:brand].present?
      sql_query = "brand ILIKE :query"
      @sneakers = @sneakers.where(sql_query, query: "%#{params[:brand]}%")
    else
      @sneakers
    end
  end

  def show
  end

  def new
    @sneaker = Sneaker.new
  end

  def create
    @sneaker = Sneaker.new(sneaker_params)
    @sneaker.user = current_user
    if @sneaker.save
      redirect_to sneakers_path
    else
      render :new
    end
  end

  def destroy
    @sneaker.destroy
    redirect_to sneakers_path
  end

  private

  def set_sneaker
    @sneaker = Sneaker.find(params[:id])
  end

  def sneaker_params
    params.require(:sneaker).permit( :size, :model, :brand, :condition, :price, :amount, :description, photos: [])
  end
end
