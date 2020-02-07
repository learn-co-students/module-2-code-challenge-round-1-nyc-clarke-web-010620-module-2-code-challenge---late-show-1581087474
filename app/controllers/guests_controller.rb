class GuestsController < ApplicationController

  before_action :find_episode, only: [:show]
  
  def index
    @guests = Guest.all
  end
  
  def show
    @appearances = @guest.appearances
    @appearances = @guest.sort_appearances(@appearances)
    ## sort 
  end

  private

  def find_episode
    @guest = Guest.find(params[:id])
  end

end
