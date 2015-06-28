class API::InjectionsController < API::ApiController
  before_action :authenticate_with_token!

  def index
    @injections = Injection.where("user_id = ?", current_user)
    render json: @injections, status: 200
  end

  def show
    @injection = Injection.find(param[:id])
    render json: @injection, status: 200
  end

  def create
     @injection = Injection.new(injection_params)
     @injection.user_id = current_user.id
    if @injection.save
      render json:  @injection, status: 201, location: [:api, @injection]
    else
      render json: { errors:  @injection.errors }, status: 422
    end
  end

  def update
    @injection = Injection.find(params[:id])
    if @injection.update(injection_params)
      render json: @injection, status: 200, location: [:api, @injection]
    else
      render json: { errors: @injection.errors }, status: 422
    end
  end

  def destroy
    @injection = Injection.find(params[:id])
    @injection.destroy
    head 204
  end

  private

  def injection_params
    params.require(:injection).permit(:num_of_units_taken, :category)
  end
end
