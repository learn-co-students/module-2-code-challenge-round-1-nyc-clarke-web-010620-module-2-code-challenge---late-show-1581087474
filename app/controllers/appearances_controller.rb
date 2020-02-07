class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new 
        @guests = Guest.all 
        @episodes = Episode.all 
    end

    def create
        @appearance = Appearance.create(appearance_param)

        redirect_to guest_path(@appearance.guest)
    end 

    private

    def appearance_param
        params.require(:appearance).permit(:guest_id, :episode_id)
    end 
end