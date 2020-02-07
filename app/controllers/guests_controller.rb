class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show 
    @guest = Guest.find(params[:id])
    @episodes = @guest.episodes
    # @sorted = sort_episodes 
  end 

  def new 
    @guest = Guest.new
  end 

  def create 
    @guest = Guest.create(guest_params)
  end 

  private 

  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end 


end
