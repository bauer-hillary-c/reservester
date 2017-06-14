class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  before_action :find_restaurant, only: [:index, :new, :create]

  def new
    
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.restaurant_id = @restaurant.id

    if @reservation.save
      OwnerMailer.new_reservation_email(@reservation).deliver
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def show
  end

  def index
    @reservations = @restaurant.reservations
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      redirect_to @reservation
    else
      render 'edit'
    end
  end

  def destroy
    @reservation.destroy
    render 'index'
  end

  private

  def reservation_params
    params.require(:reservation).permit(:restaurant_id, :guest_name, :notes, :event_on, :event_time)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
