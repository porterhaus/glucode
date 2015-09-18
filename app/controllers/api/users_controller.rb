class API::UsersController < API::ApiController
  skip_before_filter :verify_authenticity_token, :only => :create

  def show
    @user = User.where("user_id = ?", current_user)
    render json:  @user, status: 200
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 201, location: [:api, @user]
    else
      render json: { errors: @user.errors }, status: 422
    end
  end

  def update
    @user = current_user
    if @user.update(user_params)
      render json: @user, status: 200, location: [:api, @user]
    else
      render json: { errors: @user.errors }, status: 422
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    head 204
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role, :auth_token)
    end
end
