class VenuesController < ApplicationController

  def new
  end

  def create
  end

  def index
    @venues = Venue.all
  end

  def show
    @venues = Venue.all
    @venue = Venue.find params[:id]
    @incident = Incident.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
