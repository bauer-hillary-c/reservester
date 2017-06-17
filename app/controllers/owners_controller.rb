class OwnersController < ApplicationController
  before_action :find_owner
  before_action :check_owner

  def dashboard
    @restaurants = @owner.restaurants
  end

  private

  def find_owner
    @owner = Owner.find(params[:owner_id])
  end

  def check_owner
    redirect_to(root_path, notice: 'This ain\'t yours') if @owner != current_owner
  end
end
