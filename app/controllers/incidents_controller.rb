class IncidentsController < ApplicationController

  def new
    @incident = Incident.new
  end

  def create

    @incident = Incident.new incident_params
    @incident.user_id = @current_user.id
    @incident.save

    if @incident.persisted?
      redirect_to venue_path(@incident.venue_id)
    else
      # Because the render below bypasses the venues controller show action,
      # @venue will not be defined for the show template.
      # So we have to manually create @venue here before rendering. 
      @venue = Venue.find @incident.venue_id
      render 'venues/show'
    end

  end

  def index
    @incidents = Incident.all
  end

  def show
    @incident = Incident.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

########################################
private

  def incident_params
    params.require(:incident).permit(:date, :location, :incident_type, :incident_details, :poi_details, :witness_details, :reported_to, :reported_by, :follow_up_actions, :venue_id)
  end

end
