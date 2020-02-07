class AppearancesController < ApplicationController

    def news
        @appearance = Appearance.new
    end

    def create
         @appearance = Appearance.create(appearance_params)
         redirect_to episodes_path(apperance_params[:episode_id])
    end

    private
    def appearance_params
      params.require(:appearance).permit(:guest_id, :episode_id, :appearance_rating)
    end

end