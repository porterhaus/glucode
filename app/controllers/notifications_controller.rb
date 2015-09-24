class NotificationsController < ApplicationController
  def index
    @notifications = PublicActivity::Activity.all
    render json: @notifications
  end
end
