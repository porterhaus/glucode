class API::ActivitiesController < API::ApiController
  before_action :authenticate_with_token!

  def index
    @activities = current_user.recent_activities(10)
    render json:  @activities, status: 200
  end

end
