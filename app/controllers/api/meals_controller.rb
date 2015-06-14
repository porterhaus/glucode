class API::MealsController < API::ApiController
  before_action :authenticate_with_token!

  def index
    @meals = Meal.where("user_id = ?", current_user)
    render json:  @meals, status: 200
  end

  def show
    @meal = Meal.find(param[:id])
  end

  def create
     @meal = Meal.new(meal_params)
     @meal.user_id = current_user.id
    if @meal.save
      render json:  @meal, status: 201, location: [:api, @meal]
    else
      render json: { errors:  @meal.errors }, status: 422
    end
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      render json: @meal, status: 200, location: [:api, @meal]
    else
      render json: { errors: @meal.errors }, status: 422
    end
  end

  def destroy
    @meal = @meal.find(params[:id])
    @meal.destroy
    head 204
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :carbohydrates, :description)
  end
end
