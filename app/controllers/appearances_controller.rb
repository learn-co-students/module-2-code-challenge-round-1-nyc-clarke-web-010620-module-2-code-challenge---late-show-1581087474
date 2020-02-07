class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
    @rating = [1..5]
  end

  def create
    @app = Appearance.create(app_params)
      if @app.valid?
        redirect_to episode_path(@app.episode)
      else 
        flash[:error] = @app.errors.full_messages
        redirect_to new_appearance_path
      end
  end

  private
  def app_params
    params.require(:appearance).permit(:guest_id, :episode_id, :rating)
  end

end
