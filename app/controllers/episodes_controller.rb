class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show 
    @episode = Episode.find(params[:id])
    @guests = Guest.all 
    @appearances = Appearance.all
    # byebug
  end


end
