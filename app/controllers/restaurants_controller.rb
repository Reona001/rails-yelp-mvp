class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      # redirect_to new_restaurant_path(@restaurant)
      render :new
    end
  end
# def create
#     @review = Review.new(review_params)
#     @review.restaurant = @restaurant
#     if @review.save
#       redirect_to  restaurant_path(@restaurant)
#     else
#       render :new
#     end
#   end





  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :review)
  end
end
