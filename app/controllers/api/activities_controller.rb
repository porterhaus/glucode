class API::ActivitiesController < API::ApiController
  before_action :authenticate_with_token!

  def index
    #@activites = current_user.recent_activities(10) Returning null ???
    @activities = Activity.where("user_id = ?", current_user)
    render json:  @activities, status: 200
  end

end
