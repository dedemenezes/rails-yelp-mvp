class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  
  end
  

  def new
  end

  def create
  end

  private

  def set_restaurant
    @restaurant = @restaurants.find(params[:id])    
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
