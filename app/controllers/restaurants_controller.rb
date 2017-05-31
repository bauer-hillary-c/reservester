class RestaurantsController < ApplicationController

  def new
    
  end

  def create
    @restaurant = Restaurant.new(params.require(:restaurant).permit(:name, :address, :food_type, :phone_number))

    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def index
    @restaurants = Restaurant.all
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update(params.require(:restaurant).permit(:name, :address, :food_type, :phone_number))
      redirect_to @restaurant
    else
      render 'index'
    end
  end
end
