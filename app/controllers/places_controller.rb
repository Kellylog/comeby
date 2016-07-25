class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @places = Place.all
      
  end

  def show
    @place = Place.find(params[:id])   
    @comment = Comment.new
<<<<<<< HEAD
    
=======
>>>>>>> f1612b6596f7ab7ce29d97c3d68eda852d41dbdb
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
