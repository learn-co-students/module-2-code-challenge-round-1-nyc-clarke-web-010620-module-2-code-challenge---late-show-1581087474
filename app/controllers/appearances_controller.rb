class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
         @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
          redirect_to episode_path(appearance_params[:episode_id])
        else
          flash[:errors] = @appearance.errors.full_messages
          redirect_to new_appearance_path
        end
    end

    private
    def appearance_params
      params.require(:appearance).permit(:guest_id, :episode_id, :appearance_rating)
    end

end