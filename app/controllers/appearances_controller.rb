class AppearancesController < ApplicationController
    def new
        @app = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
        @errors = flash[:errors]
    end
    def create
        @app = Appearance.new(app_params(:guest_id, :episode_id, :rating))
        if @app.valid?
            @app.save
            @ep = @app.episode_id
            redirect_to episode_path(@ep)
        else
            flash[:errors] = @app.errors.full_messages
            redirect_to new_appearance_path
        end
    end
    private
    def app_params(*args)
        params.require(:appearance).permit(*args)
    end
end
