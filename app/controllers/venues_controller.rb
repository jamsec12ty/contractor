class VenuesController < ApplicationController

  def new
  end

  def create
  end

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find params[:id]
    @user_incidents = @venue.incidents.where(user_id:@current_user.id)
    @incident = Incident.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
