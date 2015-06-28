class API::AuthController < API::ApiController

  before_action :authenticate_with_token!, only: :logout

  def signin
    authenticate_with_http_basic do | email, password |
      # TODO => Need to catch the error if no user is found. It's throwing a 500 interval server error.
      @user = User.find_by(email: email)
      if @user.present?
        if @user.valid_password? password
          render json: { authenticated_user: @user }, status: 200
        end
      else
        render json: { errors: @user.errors }, status: 401
      end
    end
  end

  def signout
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
