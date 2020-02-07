class AppearancesController < ApplicationController


def new 
    @appearance = Appearance.new 
    @guests= Guest.all
    @episodes = Episode.all
    @errors = flash[:errors] 
end 

def create
    @appearance = Appearance.create(appearance_params) 
    
    if @appearance.valid?  
    redirect_to episode_path(@appearance.episode.id)
    else 
    flash[:errors] = @appearance.errors.full_messages
    redirect_to new_appearance_path 
    end 

end 

private

def appearance_params
params.require(:appearance).permit(:numeric_rating,:guest_id,:episode_id)
end

end
