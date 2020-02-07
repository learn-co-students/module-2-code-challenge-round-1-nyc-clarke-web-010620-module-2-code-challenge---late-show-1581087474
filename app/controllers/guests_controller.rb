class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
  def show
    @guest = Guest.find(params[:id])
    apps = @guest.appearances.sort_by{|app| app.rating}
    @appearances = apps.reverse   
  end
end
