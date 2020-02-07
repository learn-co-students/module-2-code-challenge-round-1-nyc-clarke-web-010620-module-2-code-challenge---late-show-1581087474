class AppearancesController < ApplicationController
    def new
        @app = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end
    def create
        @app = Appearance.new(app_params(:guest_id, :episode_id, :rating))
        @app.save
        ep_id = @app.episode_id
        @ep = Episode.find_by(id: ep_id)
        redirect_to episode_path(@ep)
    end
    private
    def app_params(*args)
        params.require(:appearance).permit(*args)
    end
end
