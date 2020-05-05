class Api::V1::RestaurantsController < Api::V1::BaseController
  before_action :set_restaurants_params, only: %i(show)

  #
  # GET /api/v1/restaurants
  #
  def index
    @restaurants = Restaurant.all
    render :index
  end

  #
  # POST /api/v1/restaurants
  #
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      render :create
      # render json: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  #
  # GET /api/v1/restaurants/:id
  #
  def show
    render :show
  end

  private

  def set_restaurants_params
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :opening_hours,
      :closing_hours,
      :nearest_station,
      :external_link,
      :image
    )
  end
end
