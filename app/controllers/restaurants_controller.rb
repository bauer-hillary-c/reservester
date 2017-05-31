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
end
