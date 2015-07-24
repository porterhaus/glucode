class API::RegistrationsController < API::ApiController
  skip_before_filter :verify_authenticity_token, :only => :create

  respond_to :json

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 201
    else
      render json: {errors: @user.errors}, status: 422
    end
  end

  protected

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:role,:auth_token)
  end
end
