class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @appearances = @episode.appearances
    #average rating logic is contained in the class model
    @avg_rating = @episode.average_rating
  end
end
