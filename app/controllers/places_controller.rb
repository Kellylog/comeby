class PlacesController < ApplicationController
  def show
  end

  def index
    @places = Place.all
  end
  
end
