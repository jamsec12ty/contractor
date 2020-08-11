class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.datetime :date
      t.string :location
      t.string :incident_type
      t.string :incident_details
      t.string :poi_details
      t.string :witness_details
      t.string :reported_to
      t.string :reported_by
      t.string :follow_up_actions
      t.integer :venue_id
      t.integer :user_id

      t.timestamps
    end
  end
end
