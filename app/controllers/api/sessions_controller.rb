class API::SessionsController < API::ApiController

  before_action :authenticate_with_token!, only: :destroy

  skip_before_filter :verify_authenticity_token, only: [:create, :destroy]

  def create
    authenticate_with_http_basic do | email, password |
      @user = User.find_by(email: email)
      if (@user.present? && (@user.valid_password? password))
        sign_in @user, store: false
        render json: { authenticated_user: @user }, status: 200, location: [:api, @user]
      else
        render json: { errors: 'Invalid email address and/or password.' }, status: 422
      end
    end
  end

  def destroy
    @user = User.find_by(auth_token: request.headers['Authorization'])

    if @user.present?
      @user.set_auth_token
      @user.save
      head 204
    else
      render json: { errors: 'No auth_token set.' }, status: 401
    end
  end
end
