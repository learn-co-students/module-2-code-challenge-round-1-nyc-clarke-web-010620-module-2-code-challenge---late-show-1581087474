class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @show = Show.find(params[:id])
    #@show.appearances 
  end
end
