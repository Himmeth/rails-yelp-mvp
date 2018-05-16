#require_relative '../controllers/review'

class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.all.find(params[:id])
    @reviews = Review.all
    #raise
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(resto_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  private

  def resto_params
    params.require(:restaurant).permit(:name, :phone_number, :address, :category)
  end
end
