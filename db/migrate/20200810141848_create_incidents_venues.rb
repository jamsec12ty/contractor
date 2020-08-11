class CreateIncidentsVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents_venues do |t|
      t.integer :venue_id
      t.integer :incident_id
    end
  end
end
