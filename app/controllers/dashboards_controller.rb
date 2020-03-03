class DashboardsController < ApplicationController
  def show
    @user = current_user
    @locations = current_user.locations
    @locations = policy_scope(@locations).order(created_at: :desc)
    authorize @locations
  end
end
