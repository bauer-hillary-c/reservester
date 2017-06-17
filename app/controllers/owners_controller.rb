class OwnersController < ApplicationController
  before_action :find_owner

  def dashboard
    @restaurants = @owner.restaurants
  end

  private

  def find_owner
    @owner = Owner.find(params[:owner_id])
  end
end
