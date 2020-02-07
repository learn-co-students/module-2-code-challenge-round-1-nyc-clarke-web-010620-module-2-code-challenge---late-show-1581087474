class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    Appearance.order_by_rating
    @guest = Guest.find(params[:id])
  end
end
