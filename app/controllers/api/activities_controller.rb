class API::ActivitiesController < API::ApiController
  before_action :authenticate_with_token!

  def index
<<<<<<< HEAD
    @activities = current_user.recent_activities(10)
=======
    @activities = current_user.recent_activities(14)
>>>>>>> user-activity-feed
    render json:  @activities, status: 200
  end

end
