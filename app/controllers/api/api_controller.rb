class API::ApiController < ActionController::Base
  include Authenticable
  include ActionController::HttpAuthentication::Basic::ControllerMethods

  respond_to :json

  protect_from_forgery with: :null_session
end
