class API::BgtestsController < API::ApiController
  before_action :authenticate_with_token!

  def index
    @bgtests = Bgtest.where("user_id = ?", current_user)
    render json: @bgtests, status: 200
  end

  def show
    @bgtest = Bgtest.find(param[:id])
  end

  def create
    @bgtest = Bgtest.new(bgtest_params)
    @bgtest.user_id = current_user.id
    if @bgtest.save
      render json: @bgtest, status: 201, location: [:api, @bgtest]
    else
      render json: { errors: @bgtest.errors }, status: 422
    end
  end

  def update
    @bgtest = Bgtest.find(params[:id])
    if @bgtest.update(bgtest_params)
      render json: @bgtest, status: 200, location: [:api, @bgtest]
    else
      render json: { errors: @bgtest.errors }, status: 422
    end
  end

  def destroy
    @bgtest = Bgtest.find(params[:id])
    @bgtest.destroy
    head 204
  end

  private

  def bgtest_params
    params.require(:bgtest).permit(:value, :category, :time_of_day, :comments)
  end
end
