class ApperancesController < ApplicationController

    def new
        @apperance = Apperance.new

        @episodes = Episode.all
        @guests = Guest.all
    end

    def create
        @apperance = Apperance.create(apperance_params)
        if @apperance.valid?
        redirect_to episode_path(@apperance.episode.id)
        else
            flash[:errors] = @apperance.errors.full_messages
            redirect_to new_apperance_path
        end
    end

    private

    def apperance_params
        params.require(:apperance).permit(:guest_id,:episode_id)
    end

end
