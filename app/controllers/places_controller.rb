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

  def destroy
    @place = Place.find(params[:id])
    if @place.user != current_user
     return render text: 'Not Allowed', status: :forbidden
    end

    @place.destroy
    redirect_to places_path
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
