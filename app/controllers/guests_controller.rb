class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show 
    @guest = Guest.find(params[:id])
    @episodes = Episode.all
    @appearances = Appearance.all
    # byebug
  end


end
