class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @q = Restaurant.ransack(params[:q])
    @restaurants = @q.result(distinct: true).includes(:favorite_dishes,
                                                      :dishes).page(params[:page]).per(10)
    @location_hash = Gmaps4rails.build_markers(@restaurants.where.not(address_latitude: nil)) do |restaurant, marker|
      marker.lat restaurant.address_latitude
      marker.lng restaurant.address_longitude
    end
  end

  def show
    @favorite = Favorite.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit; end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant was successfully created."
    else
      render :new
    end
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: "Restaurant was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_url,
                notice: "Restaurant was successfully destroyed."
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:address, :neighborhood)
  end
end
