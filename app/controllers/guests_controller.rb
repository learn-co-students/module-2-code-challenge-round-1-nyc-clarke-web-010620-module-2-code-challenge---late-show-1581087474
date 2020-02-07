class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    #sorts the appearances by best rating. Should this be in the model??
    @appearances = @guest.appearances.sort_by{|appearance| appearance.rating }.reverse
  end
  
end
