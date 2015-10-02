class API::ActivitiesController < API::ApiController
  before_action :authenticate_with_token!

  def index
    @activities = current_user.recent_activities(14)
    render json:  @activities, status: 200
  end

end
