class AppearancesController < ApplicationController


def new 
    @appearance = Appearance.new 
    @guests= Guest.all
    @episodes = Episode.all
end 

def create
    @appearance = Appearance.create(appearance_params) 

    redirect_to episode_path(@appearance.episode.id)
end 

private

def appearance_params
params.require(:appearance).permit(:numeric_rating,:guest_id,:episode_id)
end

end
