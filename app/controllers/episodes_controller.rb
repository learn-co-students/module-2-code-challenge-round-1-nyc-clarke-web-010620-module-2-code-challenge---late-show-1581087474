class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end
  def show
    @ep = Episode.find(params[:id])
    appearances = Appearance.all.select{|app| app.episode_id == @ep.id}
    g_ids = appearances.map{|app| app.guest_id}
    @guests = []
    Guest.all.each do |g|
      if g_ids.include?(g.id)
        @guests << g
      end
    end
  end
end
