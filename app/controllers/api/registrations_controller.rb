class API::RegistrationsController < Devise::RegistrationsController
  skip_before_filter :verify_authenticity_token, :only => :create

  respond_to :json

  def create
    build_resource(sign_up_params)
    if resource.save
      render json: resource, status: 201
    else
      render json: {errors: resource.errors}, status: 422
    end
  end

  protected

  def sign_up_params
    params.require(:user).permit(
                            :name,
                            :email,
                            :password,
                            :password_confirmation,
                            :role,
                            :auth_token)
  end
end
