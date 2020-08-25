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
    @incident = Incident.find params[:id]
    redirect_to incident_path(@incident.id) unless @incident.can_edit_followup?
  end

  def update
    @incident = Incident.find params[:id]

    unless @incident.can_edit_followup?
      #prevent form from submitting if outside of 6 hour window
      redirect_to incident_path(@incident.id)
      return
    end

    if @incident.can_edit_all?
      #If we re within the one hour window we can edit all
      # fields (except for venue_id which can only be set
      # when the report is created)
      @incident.update incident_params.except(:venue_id)
    elsif @incident.can_edit_followup?
      # If we are not within the one hour window, are we still
      # within the 6 hour window? If so, we can edit followup only.
      @incident.update incident_followup_only_params
    end

    # todo: check for validation errors
    redirect_to incident_path(@incident.id)

  end #Update

  def destroy
  end

########################################
private

  def incident_params
    params.require(:incident).permit(:date, :location, :incident_type, :incident_details, :poi_details, :witness_details, :reported_to, :reported_by, :follow_up_actions, :venue_id)
  end

  def incident_followup_only_params
    params.require(:incident).permit(:follow_up_actions)
  end


end
