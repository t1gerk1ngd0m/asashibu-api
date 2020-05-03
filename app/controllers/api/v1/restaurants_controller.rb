class Api::V1::RestaurantsController < Api::V1::BaseController
  before_action :set_restaurants_params, only: %i(show)

  #
  # GET /api/v1/restaurants
  #
  def index
    @restaurants = Restaurant.all
    render json: @restaurants
  end

  #
  # POST /api/v1/restaurants
  #
  def create
    @restaurant = Restaurants.new(restaurant_params)
    if @restaurant.save
      CrawlingTabelogService.new(@restaurant).call
      render :create
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  #
  # GET /api/v1/restaurants/:id
  #
  def show
    render json: @restaurant
  end

  private

  def set_restaurants_params
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(
      :opening_hours,
      :external_link
    )
  end
end
