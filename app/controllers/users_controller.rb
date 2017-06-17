class UsersController < ApplicationController
  before_action :find_user

  def dashboard
    @reservations = Reservation.for_user(@user)
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end
end
