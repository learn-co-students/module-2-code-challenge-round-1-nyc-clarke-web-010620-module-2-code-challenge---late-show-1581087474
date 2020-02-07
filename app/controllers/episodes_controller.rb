class EpisodesController < ApplicationController

  before_action :find_episode, only: [:show]

  def index
    @episodes = Episode.all
  end

  def show
    @episodesguests = @episode.guests
    @average_rating = @episode.average_rating

  end

  private

  def find_episode
    @episode = Episode.find(params[:id])
  end
end
