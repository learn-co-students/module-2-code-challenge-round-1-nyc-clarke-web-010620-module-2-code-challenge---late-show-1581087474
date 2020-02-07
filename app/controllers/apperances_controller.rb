class ApperancesController < ApplicationController
    def index
        @apperances = Apperance.all
      end
    
      def show 
        @apperance = Apperance.find(params[:id])
      end 
    
      def new 
        @apperance = Apperance.new
        @guests = Guest.all
        @episodes = Episode.all
      end 
    
      def create 
        @apperance = Apperance.create(apperance_params)
        if @apperance.valid?
          redirect_to episode_path(@apperance.episode)
        else 
          flash[:errors] = @apperance.errors.full_messages
        end 
      end 
    
      private 
    
      def apperance_params
        params.require(:apperance).permit(:rating, :guest_id, :episode_id)
      end 
    
    
    
end
