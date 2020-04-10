class Api::V1::RestaurantsController < Api::V1::BaseController
  before_action :set_restaurants_params, only: %i(show)

  #
  # GET /api/v1/restaurants
  #
  def index
    @restaurants = Restaurants.all
  end

  #
  # POST /api/v1/restaurants/:id
  #
  def create
    @restaurant = Restaurants.new(restaurant_params)
    if @restaurant.save
      render :create
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  #
  # GET /api/v1/restaurants/:id
  #
  def show
  end

  private

  def set_restaurants_params
    @restaurant = Restaurants.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :opening_hours,
      :nearest_station,
      :external_link,
      :image
    )
  end
end