class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def new
    
  end

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      redirect_to @reservation
    else
      render 'new'
    end
  end

  def show
  end

  def index
    @reservations = Reservation.all
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
    params.require(:reservation).permit(:restaurant_id, :event_at, :guest_name, :notes)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end

end
