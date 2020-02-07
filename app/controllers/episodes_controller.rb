class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end
  def show
    @ep = Episode.find(params[:id])
    @guests = @ep.guests
    app_ratings = @ep.appearances.map{|app| app.rating}
    @avg_rating = app_ratings.sum.to_f / app_ratings.count.to_f
  end
end
