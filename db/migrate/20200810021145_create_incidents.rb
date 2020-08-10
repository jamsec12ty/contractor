class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.date :date
      t.time :time
      t.string :location
      t.string :incident_type
      t.string :incident_details
      t.string :poi_details
      t.string :witness_details
      t.string :reported_to
      t.string :reported_by
      t.string :followup_actions

      t.timestamps
    end
  end
end
