class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]

  def index
    @places = Place.all
      
  end

  def show
    @place = Place.find(params[:id])   
    @comment = Comment.new
    @photo = Photo.new
  end

  def new
    @place = Place.new
  end

  


  def create
    Place.create(place_params)
    redirect_to places_path
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end
  
  
end
