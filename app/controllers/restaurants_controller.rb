class RestaurantsController < ApplicationController

  def new
    
  end

  def create
    @restaurant = Restaurant.new(params.require(:restaurant).permit(:name, :address, :food_type, :phone_number))

    if @restaurant.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def show
    
  end

  def index
    @restaurants = Restaurant.all
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end
end
