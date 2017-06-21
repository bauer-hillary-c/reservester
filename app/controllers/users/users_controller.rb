class UsersController < ApplicationController
  before_action :find_user
  before_action :check_user

  def dashboard
    @reservations = Reservation.for_user(@user)
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def check_user
    redirect_to(root_path, notice: 'This ain\'t yours') if @user != current_user   
  end
end
