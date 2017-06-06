class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :check_owner, only: [:edit, :update, :destroy]
  before_action :authenticate_owner!, only: [:edit, :update, :new, :create]

  def new
    
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.owner = current_owner

    if @restaurant.save
      redirect_to @restaurant
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
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant.destroy
    render 'index'
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :food_type, :phone_number, :photo)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def check_owner
    redirect_to(restaurants_url, notice: 'This ain\'t yours') if @restaurant.owner != current_owner
  end
end
