class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all 
        #getting possible errors from the create page to display on the re-rendered new page
        @errors = flash[:errors]
    end

    def create
        @appearance = Appearance.new(appearance_params)
        #checks to see if the appearance will not trigger any validation errors. if it does then it will send the errors back to the new page, if it doesnt it will redirect to the newly created show page
        if @appearance.valid?
          @appearance.save
          redirect_to @appearance.episode
        else
          flash[:errors] = @appearance.errors.full_messages
          redirect_to new_appearance_path
        end
    end

    private
    #this method allows us to call the params of the form from new to create.
    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
    
end
